{
 * This Source Code Form is subject to the terms of the Mozilla Public License,
 * v. 2.0. If a copy of the MPL was not distributed with this file, You can
 * obtain one at http://mozilla.org/MPL/2.0/
 *
 * Copyright (C) 2012-2021, Peter Johnson (www.delphidabbler.com).
 *
 * Frame that is used to edit various miscellaneous PasHi options not edited via
 * other option frames.
}


unit FrOptions.UMisc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrOptions.UBase, FrOptions.UHelper, UOptions, StdCtrls, Spin;

type
  TMiscOptionsFrame = class(TBaseOptionsFrame)
    chkTrim: TCheckBox;
    lblSeparatorLines: TLabel;
    seSeparatorLines: TSpinEdit;
    lblSeparatorLinesEnd: TLabel;
    lblLanguage: TLabel;
    lblTitle: TLabel;
    edLanguage: TEdit;
    edTitle: TEdit;
    chkBranding: TCheckBox;
    chkViewport: TCheckBox;
    chkEdgeCompatibility: TCheckBox;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Initialise(const Options: TOptions); override;
    procedure UpdateOptions(const Options: TOptions); override;
  end;

implementation

{$R *.dfm}

{ TMultiFileOptionsFrame }

constructor TMiscOptionsFrame.Create(AOwner: TComponent);
begin
  inherited;
end;

destructor TMiscOptionsFrame.Destroy;
begin

  inherited;
end;

procedure TMiscOptionsFrame.Initialise(const Options: TOptions);
begin
  chkTrim.Checked := Options.GetParamAsBool('trim');

  seSeparatorLines.Value := Options.GetParamAsInt('separator-lines');

  if Options.IsSet('language') then
    edLanguage.Text := Options.GetParamAsStr('language')
  else // 'language-neutral' must be set
    edLanguage.Text := '';

  if Options.IsSet('title') then
    edTitle.Text := Options.GetParamAsStr('title')
  else // 'title-default' must be set
    edTitle.Text := '';

  chkBranding.Checked := Options.GetParamAsBool('branding');

  chkViewport.Checked := not SameText(
    Options.GetParamAsStr('viewport'), 'none'
  );

  chkEdgeCompatibility.Checked := Options.GetParamAsBool('edge-compatibility');
end;

procedure TMiscOptionsFrame.UpdateOptions(const Options: TOptions);
begin
  Options.Store('trim', chkTrim.Checked);

  Options.Store('separator-lines', seSeparatorLines.Value);

  Options.Delete('language');
  Options.Delete('language-neutral');
  if Trim(edLanguage.Text) <> '' then
    Options.Store('language', Trim(edLanguage.Text))
  else
    Options.Store('language-neutral');

  Options.Delete('title');
  Options.Delete('title-default');
  if Trim(edTitle.Text) <> '' then
    Options.Store('title', Trim(edTitle.Text))
  else
    Options.Store('title-default');

  Options.Store('branding', chkBranding.Checked);

  if chkViewPort.Checked then
    Options.Store('viewport', 'mobile')
  else
    Options.Store('viewport', 'none');

  Options.Store('edge-compatibility', chkEdgeCompatibility.Checked);
end;

end.
