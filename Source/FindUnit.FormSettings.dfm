object frmSettings: TfrmSettings
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Settings'
  ClientHeight = 437
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pgcMain: TPageControl
    Left = 0
    Top = 0
    Width = 654
    Height = 437
    ActivePage = tsGeneral
    Align = alClient
    TabOrder = 0
    object tsGeneral: TTabSheet
      Caption = 'General'
      ImageIndex = 1
      object grpGeneralSettings: TGroupBox
        Left = 0
        Top = 0
        Width = 646
        Height = 409
        Align = alClient
        Caption = 'Settings'
        TabOrder = 0
        object lblLink: TLabel
          Left = 242
          Top = 387
          Width = 181
          Height = 13
          Cursor = crHandPoint
          Caption = 'https://github.com/rfrezino/RFindUnit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic, fsUnderline]
          ParentFont = False
          OnClick = lblLinkClick
        end
        object grpSearchAlgorithm: TRadioGroup
          Left = 335
          Top = 20
          Width = 297
          Height = 81
          Caption = 'Search match algorithm '
          Items.Strings = (
            'Default'
            'Levenshtein')
          TabOrder = 1
        end
        object grpShotCuts: TGroupBox
          Left = 15
          Top = 20
          Width = 297
          Height = 77
          Caption = 'Shortcuts'
          TabOrder = 0
          object chkMemorize: TCheckBox
            Left = 12
            Top = 23
            Width = 274
            Height = 17
            Caption = 'Store choices to use on Auto Import (Ctrl + Shit + I)'
            Checked = True
            State = cbChecked
            TabOrder = 0
          end
          object chkOrganizeUses: TCheckBox
            Left = 12
            Top = 46
            Width = 194
            Height = 17
            Caption = 'Organize uses (Ctrl + Shift + O)'
            TabOrder = 1
          end
        end
        object grpUsesOrganization: TGroupBox
          Left = 15
          Top = 108
          Width = 297
          Height = 197
          Caption = 'Uses Organization'
          TabOrder = 2
          object lblBreakLineAt: TLabel
            Left = 15
            Top = 160
            Width = 124
            Height = 13
            Caption = 'Break uses line at position'
          end
          object chkAlwaysImportToInterfaceSection: TCheckBox
            Left = 15
            Top = 42
            Width = 229
            Height = 17
            Caption = 'Always import to interface section'
            TabOrder = 1
          end
          object chkSortAfterAdding: TCheckBox
            Left = 15
            Top = 64
            Width = 210
            Height = 17
            Caption = 'Sort uses by alphabetical order'
            TabOrder = 2
            OnClick = chkSortAfterAddingClick
          end
          object chkBreakline: TCheckBox
            Left = 15
            Top = 86
            Width = 210
            Height = 17
            Caption = 'Break line at each new uses entry'
            TabOrder = 3
            OnClick = chkBreaklineClick
          end
          object chkBlankLineBtwNamespace: TCheckBox
            Left = 32
            Top = 108
            Width = 193
            Height = 17
            Hint = 
              'Sort and Break line should be checked in order to use this optio' +
              'n'
            Caption = 'Blank line between namescapes'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
          end
          object chbOrganizeUsesAfterInsertingNewUsesUnit: TCheckBox
            Left = 15
            Top = 21
            Width = 266
            Height = 17
            Caption = 'Organize uses after inserting a new Uses unit'
            TabOrder = 0
          end
          object medtBreakUsesLineAtPosition: TMaskEdit
            Left = 147
            Top = 157
            Width = 34
            Height = 21
            EditMask = '!9!9!9;1; '
            MaxLength = 3
            TabOrder = 6
            Text = '120'
          end
          object chbGroupNonNameSpaceUnits: TCheckBox
            Left = 32
            Top = 130
            Width = 193
            Height = 17
            Hint = 
              'Sort and Break line should be checked in order to use this optio' +
              'n'
            Caption = 'Group non-namepace units'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
          end
        end
      end
    end
    object tsAutoImport: TTabSheet
      Caption = 'Auto Import'
      object grdAutoImport: TDBGrid
        Left = 0
        Top = 48
        Width = 646
        Height = 336
        Align = alClient
        DataSource = dtsAutoImport
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'IDENTIFIER'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIT'
            Width = 300
            Visible = True
          end>
      end
      object grpAutoSettings: TGroupBox
        Left = 0
        Top = 0
        Width = 646
        Height = 48
        Align = alTop
        Caption = 'Settings'
        TabOrder = 0
        object chkAutoEnabled: TCheckBox
          Left = 16
          Top = 18
          Width = 65
          Height = 21
          Caption = 'Enabled'
          TabOrder = 1
        end
        object btn1: TButton
          Left = 512
          Top = 14
          Width = 125
          Height = 25
          Caption = 'Open Settings File'
          TabOrder = 0
          OnClick = btn1Click
        end
      end
      object nvgAutoImport: TDBNavigator
        Left = 0
        Top = 384
        Width = 646
        Height = 25
        DataSource = dtsAutoImport
        Align = alBottom
        ConfirmDelete = False
        TabOrder = 2
      end
    end
  end
  object cdsAutoImport: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 583
    Top = 41
    object cdsAutoImportIDENTIFIER: TStringField
      FieldName = 'IDENTIFIER'
      Size = 200
    end
    object cdsAutoImportUNIT: TStringField
      FieldName = 'UNIT'
      Size = 200
    end
  end
  object dtsAutoImport: TDataSource
    DataSet = cdsAutoImport
    Left = 582
    Top = 96
  end
end
