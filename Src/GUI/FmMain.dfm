object MainForm: TMainForm
  Left = 480
  Top = 328
  Caption = 'MainForm'
  ClientHeight = 447
  ClientWidth = 641
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 500
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = mnuMain
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tbMain: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 635
    Height = 23
    Caption = 'tbMain'
    Images = ilMain
    TabOrder = 0
    object tbOpen: TToolButton
      Left = 0
      Top = 0
      Action = actOpen
    end
    object tbSaveAs: TToolButton
      Left = 23
      Top = 0
      Action = actSaveAs
    end
    object tbSpacer1: TToolButton
      Left = 46
      Top = 0
      Width = 8
      Caption = 'tbSpacer1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object tbCopy: TToolButton
      Left = 54
      Top = 0
      Action = actCopy
    end
    object tbPaste: TToolButton
      Left = 77
      Top = 0
      Action = actPaste
    end
    object tbSpacer2: TToolButton
      Left = 100
      Top = 0
      Width = 8
      Caption = 'tbSpacer2'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object tbOptions: TToolButton
      Left = 108
      Top = 0
      Action = actOptionsBar
    end
  end
  object pcMain: TPageControl
    AlignWithMargins = True
    Left = 2
    Top = 29
    Width = 405
    Height = 418
    Margins.Left = 2
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    ActivePage = tsHTML
    Align = alClient
    TabOrder = 1
    OnMouseLeave = pcMainMouseLeave
    object tsRendered: TTabSheet
      Caption = 'Display View'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlRendered: TPanel
        Left = 0
        Top = 0
        Width = 397
        Height = 390
        Align = alClient
        BevelEdges = []
        BevelOuter = bvNone
        Caption = 'pnlRendered'
        TabOrder = 0
        object wbRendered: TWebBrowser
          Left = 0
          Top = 0
          Width = 397
          Height = 390
          Align = alClient
          TabOrder = 0
          ExplicitLeft = -4
          ExplicitWidth = 552
          ExplicitHeight = 395
          ControlData = {
            4C000000082900004F2800000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
    end
    object tsHTML: TTabSheet
      Tag = 2
      Caption = 'HTML View'
      ImageIndex = 2
      object pnlHTML: TPanel
        Left = 0
        Top = 0
        Width = 397
        Height = 390
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alClient
        BevelEdges = [beLeft, beTop]
        BevelKind = bkTile
        BevelOuter = bvNone
        Caption = 'pnlHTML'
        TabOrder = 0
        object edHTML: TMemo
          Left = 0
          Top = 0
          Width = 395
          Height = 388
          Align = alClient
          BevelOuter = bvNone
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 0
          WordWrap = False
        end
      end
    end
  end
  object pnlOptions: TPanel
    AlignWithMargins = True
    Left = 409
    Top = 29
    Width = 230
    Height = 418
    Margins.Left = 2
    Margins.Top = 0
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alRight
    BevelKind = bkTile
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      226
      414)
    object lblOptionsTitle: TLabel
      Left = 0
      Top = 0
      Width = 226
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'Options'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 43
    end
    object lblOptionsHide: TLabel
      Left = 209
      Top = 1
      Width = 15
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'r'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Marlett'
      Font.Style = []
      GlowSize = 16
      ParentFont = False
      ShowAccelChar = False
      OnClick = lblOptionsHideClick
      OnMouseEnter = lblOptionsHideMouseEnter
      OnMouseLeave = lblOptionsHideMouseLeave
    end
    object btnApplyOptions: TButton
      Left = 14
      Top = 386
      Width = 75
      Height = 25
      Action = actApply
      Anchors = [akLeft, akBottom]
      Caption = '&Apply'
      TabOrder = 0
    end
    object btnRestoreDefaults: TButton
      Left = 104
      Top = 386
      Width = 107
      Height = 25
      Action = actRestoreDefaults
      Anchors = [akLeft, akBottom]
      TabOrder = 1
    end
    object cpgrpOptions: TCategoryPanelGroup
      Left = 1
      Top = 18
      Width = 223
      Height = 357
      VertScrollBar.Tracking = True
      Align = alNone
      Anchors = [akLeft, akTop, akBottom]
      ChevronHotColor = clHotLight
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      ParentColor = True
      TabOrder = 2
      object cpnlMisc: TCategoryPanel
        Top = 90
        Height = 30
        Caption = 'Miscellaneous'
        Color = clWindow
        Collapsed = True
        TabOrder = 0
        ExpandedHeight = 217
        inline frmMisc: TMiscOptionsFrame
          Left = 0
          Top = 0
          Width = 219
          Height = 0
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 219
          ExplicitHeight = 0
        end
      end
      object cpnlLines: TCategoryPanel
        Top = 60
        Height = 30
        Caption = 'Line Numbering && Striping'
        Color = clWindow
        Collapsed = True
        TabOrder = 1
        ExpandedHeight = 167
        inline frmLines: TLineStyleOptionsFrame
          Left = 0
          Top = 0
          Width = 219
          Height = 0
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 219
          ExplicitHeight = 0
        end
      end
      object cpnlCSS: TCategoryPanel
        Top = 30
        Height = 30
        Caption = 'Style Sheets'
        Color = clWindow
        Collapsed = True
        TabOrder = 2
        ExpandedHeight = 248
        inline frmCSS: TCSSOptionsFrame
          Left = 0
          Top = 0
          Width = 219
          Height = 0
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 219
          ExplicitHeight = 0
        end
      end
      object cpnlDocType: TCategoryPanel
        Top = 0
        Height = 30
        Caption = 'Document Type'
        Color = clWindow
        Collapsed = True
        TabOrder = 3
        ExpandedHeight = 130
        inline frmDocType: TDocTypeOptionsFrame
          Left = 0
          Top = 0
          Width = 219
          Height = 0
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 219
          ExplicitHeight = 0
        end
      end
    end
  end
  object mnuMain: TMainMenu
    Images = ilMain
    Left = 272
    Top = 152
    object miFile: TMenuItem
      Caption = 'File'
      object miOpen: TMenuItem
        Action = actOpen
      end
      object miSaveAs: TMenuItem
        Action = actSaveAs
      end
      object miSpacer: TMenuItem
        Caption = '-'
      end
      object miExit: TMenuItem
        Action = actExit
      end
    end
    object miEdit: TMenuItem
      Caption = 'Edit'
      object miCopy: TMenuItem
        Action = actCopy
      end
      object miPaste: TMenuItem
        Action = actPaste
      end
    end
    object miOptions: TMenuItem
      Caption = 'Options'
      object miOptionsBar: TMenuItem
        Action = actOptionsBar
        AutoCheck = True
      end
    end
    object miHelp: TMenuItem
      Caption = 'Help'
      object miPasHiGUIWiki: TMenuItem
        Action = actPasHiGUIWiki
      end
      object miAbout: TMenuItem
        Action = actAbout
      end
    end
  end
  object alMain: TActionList
    Images = ilMain
    OnUpdate = alMainUpdate
    Left = 304
    Top = 152
    object actOpen: TFileOpen
      Category = 'File'
      Caption = '&Open...'
      Dialog.Filter = 
        'Pascal files (*.pas,*.dpr,*.inc)|*.pas;*.dpr;*.inc|All files (*.' +
        '*)|*.*'
      Dialog.Options = [ofHideReadOnly, ofAllowMultiSelect, ofFileMustExist, ofEnableSizing]
      Hint = 'Open|Opens and highlights a file'
      ImageIndex = 0
      ShortCut = 16463
      OnAccept = actOpenAccept
    end
    object actSaveAs: TFileSaveAs
      Category = 'File'
      Caption = 'Save &As...'
      Dialog.DefaultExt = 'html'
      Dialog.Filter = 
        'HTML files (*.html)|*.html;*.htm|Text files (*.txt)|*.txt|All fi' +
        'les (*.*)|*.*'
      Dialog.Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
      Hint = 'Save As|Saves highlighted code as HTML'
      ImageIndex = 2
      ShortCut = 16467
      OnAccept = actSaveAsAccept
      OnUpdate = actSaveAsUpdate
    end
    object actExit: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
    end
    object actCopy: TAction
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies highlighted code to clipboard'
      ImageIndex = 1
      ShortCut = 16451
      OnExecute = actCopyExecute
      OnUpdate = actCopyUpdate
    end
    object actPaste: TAction
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Highlights source code pasted from clipboard'
      ImageIndex = 3
      ShortCut = 16470
      OnExecute = actPasteExecute
      OnUpdate = actPasteUpdate
    end
    object actAbout: TAction
      Category = 'Help'
      Caption = '&About...'
      Hint = 'About|Displays About dialog'
      OnExecute = actAboutExecute
    end
    object actRestoreDefaults: TAction
      Category = 'Options'
      Caption = '&Restore Defaults'
      Hint = '|Restore default values from PasHi config file'
      OnExecute = actRestoreDefaultsExecute
    end
    object actApply: TAction
      Category = 'Options'
      Caption = 'Apply'
      Hint = '|Apply options to any current document'
      OnExecute = actApplyExecute
    end
    object actOptionsBar: TAction
      Category = 'Options'
      AutoCheck = True
      Caption = 'actOptionsBar'
      Checked = True
      ImageIndex = 4
      OnExecute = actOptionsBarExecute
      OnUpdate = actOptionsBarUpdate
    end
    object actPasHiGUIWiki: TBrowseURL
      Category = 'Help'
      Caption = 'Online Docs'
      Hint = 'Browse URL'
      URL = 'www.delphidabbler.com/view/url/pashigui-wiki'
    end
  end
  object ilMain: TImageList
    Masked = False
    Left = 336
    Top = 152
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ABABAB00ABABAB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ABABAB0000000000ABABAB00F6F6F600F6F6F600ABABAB0000000000ABAB
      AB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ABAB
      AB00E5E5E500ABABAB00ABABAB00E5E5E500E5E5E500ABABAB00ABABAB00E5E5
      E500ABABAB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ABABAB00DCDC
      DC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDC
      DC00DCDCDC00ABABAB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ABAB
      AB00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00ABABAB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ABABAB00ABAB
      AB00E0E0E000E0E0E000E0E0E000ABABAB00ABABAB00E0E0E000E0E0E000E0E0
      E000ABABAB00ABABAB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ABABAB00E4E4E400E4E4
      E400E4E4E400E4E4E400ABABAB000000000000000000ABABAB00E4E4E400E4E4
      E400E4E4E400E4E4E400ABABAB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ABABAB00E9E9E900E9E9
      E900E9E9E900E9E9E900ABABAB000000000000000000ABABAB00E9E9E900E9E9
      E900E9E9E900E9E9E900ABABAB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ABABAB00ABAB
      AB00EEEEEE00EEEEEE00EEEEEE00ABABAB00ABABAB00EEEEEE00EEEEEE00EEEE
      EE00ABABAB00ABABAB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ABAB
      AB00F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300ABABAB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ABABAB00F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800ABABAB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ABAB
      AB00FCFCFC00ABABAB00ABABAB00FCFCFC00FCFCFC00ABABAB00ABABAB00FCFC
      FC00ABABAB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ABABAB0000000000ABABAB00FFFFFF00FFFFFF00ABABAB0000000000ABAB
      AB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ABABAB00ABABAB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000008484000084840000000000000000000000000000000000C6C6C6000000
      0000008484000000000000000000000000000000000084848400008484008484
      8400008484008484840084000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000FFFF00000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000008484000084840000000000000000000000000000000000C6C6C6000000
      0000008484000000000000000000000000000000000000848400848484000084
      8400848484000084840084000000000000000000000000000000000000000000
      000000000000000000000000000084000000000000000000000000FFFF000000
      0000008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000008484000084840000000000000000000000000000000000000000000000
      0000008484000000000000000000000000000000000084848400008484008484
      8400008484008484840084000000000000000000000000000000000000000000
      0000840000008400000084000000840000000000000000FFFF000000000000FF
      FF00000000000084840000848400008484000084840000848400008484000084
      8400008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000848400848484000084
      8400848484000084840084000000000000000000000000000000000000000000
      000084000000000000008400000000000000000000000000000000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000008484000084840000000000000000000000000000000000000000000084
      8400008484000000000000000000000000000000000084848400008484008484
      8400008484008484840084000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000FFFF000000000000FF
      FF000000000000FFFF000000000000FFFF000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000840000008400000084000000840000000000000000000000000000000000
      00000084840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000008484000000000000000000000000000000000000848400848484000084
      8400848484000084840084000000840000008400000084000000840000008400
      000084000000000000000000000000000000000000000000000000FFFF000000
      000000FFFF000000000000FFFF000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000840000000000000084000000000000000000000000000000000000000000
      00000084840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000008484000000000000000000000000000000000084848400008484008484
      8400008484008484840000848400848484000084840084848400008484008484
      8400008484000000000000000000000000000000000000FFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      00000084840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000848400848484000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      00000084840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400848484000084
      84000000000000FFFF00000000000000000000FFFF0000000000848484000084
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FE7F000000000000
      F42F000000000000E007000000000000C003000000000000E007000000000000
      C00300000000000081810000000000008181000000000000C003000000000000
      E007000000000000C003000000000000E007000000000000F42F000000000000
      FE7F000000000000FFFF000000000000FFFFFFFFFF7EFFFFFFFFFFFFBFFFFC00
      001FFE00F00381FE000FFEFEE00301020007FE82E00301FE400380FEE0030110
      2001BE82E00301F55000A0FE200301F32A9FBE90E0020003555FA0F5E0030003
      201FBEF3E00300038FF1A407E0030FC3FFF9BD7FE0030003FF75BCFFFFFF8007
      FF8F81FFBF7DF87FFFFFFFFF7F7EFFFF00000000000000000000000000000000
      000000000000}
  end
end
