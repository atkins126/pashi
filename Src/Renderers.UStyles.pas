{
 * This Source Code Form is subject to the terms of the Mozilla Public License,
 * v. 2.0. If a copy of the MPL was not distributed with this file, You can
 * obtain one at http://mozilla.org/MPL/2.0/
 *
 * Copyright (C) 2012, Peter Johnson (www.delphidabbler.com).
 *
 * Classes that render style information for inclusion in output HTML documents.
 * A <style> tag is generated for embedded CSS and a <link> tag is generated for
 * linked CSS.
}


unit Renderers.UStyles;

interface

uses
  Renderers.UTypes, UConfig;

type
  TStyleRendererFactory = record
  public
    class function CreateRenderer(const Config: TConfig): IRenderer; static;
  end;

implementation

uses
  SysUtils, StrUtils, Classes, Windows,
  IO.UHelper, UConfigFiles;

type
  TLinkedStyleSheetRenderer = class sealed(TInterfacedObject, IRenderer)
  strict private
    var
      fURL: string;
      fNewStyleTag: Boolean;
  public
    constructor Create(const URL: string; const NewStyleTag: Boolean);
    function Render: string;
  end;

type
  // could parameterise this renderer for -hidecss flag to avoid extra
  // complexity of several more classes
  TEmbeddedStyleSheetRenderer = class(TInterfacedObject, IRenderer)
  strict private
    fCSSReader: IRenderer;
    fHideCSS: Boolean;
  public
    constructor Create(CSSReader: IRenderer; HideCSS: Boolean);
    function Render: string;
  end;

type
  TCSSRenderer = class abstract(TInterfacedObject)
  strict private
    function FindComment(const Text: string; var BeginIdx: Integer;
      out Size: Integer): Boolean;
    function TrimCSS(CSS: string): string;
  strict protected
    function GetCSS: string; virtual; abstract;
  public
    function Render: string;
  end;

type
  TCSSFileRenderer = class sealed(TCSSRenderer, IRenderer)
  strict private
    fCSSFile: string;
  strict protected
    function GetCSS: string; override;
  public
    constructor Create(const CSSFile: string);
  end;

type
  TCSSResourceRenderer = class sealed(TCSSRenderer, IRenderer)
  strict protected
    function GetCSS: string; override;
  end;

{ TStyleRendererFactory }

class function TStyleRendererFactory.CreateRenderer(
  const Config: TConfig): IRenderer;
begin
  case Config.CSSSource of
    csDefault:
      Result := TEmbeddedStyleSheetRenderer.Create(
        TCSSResourceRenderer.Create, Config.HideCSS
      );
    csFile:
      Result := TEmbeddedStyleSheetRenderer.Create(
        TCSSFileRenderer.Create(Config.CSSLocation), Config.HideCSS
      );
    csLink:
      Result := TLinkedStyleSheetRenderer.Create(
        Config.CSSLocation, Config.DocType <> dtHTML4
      );
  end;
end;

{ TLinkedStyleSheetRenderer }

constructor TLinkedStyleSheetRenderer.Create(const URL: string;
  const NewStyleTag: Boolean);
begin
  Assert(URL <> '', ClassName + '.Create: URL is empty');
  inherited Create;
  fURL := URL;
  fNewStyleTag := NewStyleTag;
end;

function TLinkedStyleSheetRenderer.Render: string;
const
  TagEnders: array[Boolean] of string = ('', ' /');
begin
  Result := Format(
    '<link type="text/css" rel="stylesheet" href="%s"%s>',
    [fURL, TagEnders[fNewStyleTag]]
  );
end;

{ TEmbeddedStyleSheetRenderer }

constructor TEmbeddedStyleSheetRenderer.Create(CSSReader: IRenderer;
  HideCSS: Boolean);
begin
  inherited Create;
  fCSSReader := CSSReader;
  fHideCSS := HideCSS;
end;

function TEmbeddedStyleSheetRenderer.Render: string;
var
  Builder: TStringBuilder;
begin
  // return style tag and contents, protected by comments if flag passed to
  // constructor requires - read CSS from file or resources
  Builder := TStringBuilder.Create;
  try
    Builder.AppendLine('<style type="text/css">');
    if fHideCSS then
      Builder.AppendLine('<!--');
    Builder.AppendLine(fCSSReader.Render);
    if fHideCSS then
      Builder.AppendLine('-->');
    Builder.Append('</style>');
    Result := Builder.ToString;
  finally
    Builder.Free;
  end;
end;

{ TCSSRenderer }

function TCSSRenderer.FindComment(const Text: string; var BeginIdx: Integer;
  out Size: Integer): Boolean;
  {Finds a comment in CSS text.
    @param Text [in] Text in which to find comment.
    @param BeginIdx [in/out] Caller sets index at which to start looking for
      comemnt in text. Updated to index of start of next comment. Unchanged if
      no comment found.
    @param Size [out] Receives size of comment found. Undefined if no comment
      found.
    @return True if a comment was found, false if not.
  }
var
  EndComment: Integer;    // index of end of first comment block of CSS
begin
  Result := False;
  BeginIdx := PosEx('/*', Text, BeginIdx);          // finds start of comment
  if BeginIdx > 0 then
  begin
    EndComment := PosEx('*/', Text, BeginIdx + 1); // finds end of comment
    if EndComment > BeginIdx then
    begin
      Size := EndComment - BeginIdx + 2;
      Result := True;
    end;
  end;
end;

function TCSSRenderer.Render: string;
begin
  // read CSS using GetCSS
  // strip out comments etc
  Result := TrimCSS(GetCSS);
end;

function TCSSRenderer.TrimCSS(CSS: string): string;
var
  StartComment: Integer;
  CommentSize: Integer;
  Lines: TStringList;
  LineIdx: Integer;
begin
  Result := CSS;
  // Remove all comments
  StartComment := 1;
  while FindComment(CSS, StartComment, CommentSize) do
    Delete(CSS, StartComment, CommentSize);
  // Delete empty lines
  Lines := TStringList.Create;
  try
    Lines.Text := CSS;
    for LineIdx := Pred(Lines.Count) downto 0 do
      if Trim(Lines[LineIdx]) = '' then
        Lines.Delete(LineIdx);
    CSS := Lines.Text;
  finally
    Lines.Free;
  end;
  Result := Trim(CSS);
end;

{ TCSSFileRenderer }

constructor TCSSFileRenderer.Create(const CSSFile: string);
begin
  inherited Create;
  fCSSFile := CSSFile;
end;

function TCSSFileRenderer.GetCSS: string;
var
  FileName: string;
begin
  if not ContainsStr(fCSSFile, PathDelim) then
    FileName := IncludeTrailingPathDelimiter(TConfigFiles.UserConfigDir)
      + fCSSFile
  else
    FileName := fCSSFile;
  Result := TIOHelper.FileToString(FileName); // copes with encodings with BOMs
end;

{ TCSSResourceRenderer }

function TCSSResourceRenderer.GetCSS: string;
var
  RS: TResourceStream;
begin
  RS := TResourceStream.Create(HInstance, 'CSS_DEFAULT', RT_RCDATA);
  try
    Result := TIOHelper.BytesToString(TIOHelper.StreamToBytes(RS));
  finally
    RS.Free;
  end;
end;

end.
