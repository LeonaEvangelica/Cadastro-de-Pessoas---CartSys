object frmCadastroPessoas: TfrmCadastroPessoas
  Left = 0
  Top = 0
  Caption = 'frmCadastroPessoas'
  ClientHeight = 525
  ClientWidth = 652
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoes: TPanel
    Left = 0
    Top = 457
    Width = 652
    Height = 68
    Align = alBottom
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvLowered
    TabOrder = 0
    object dbNav: TDBNavigator
      Left = 2
      Top = 2
      Width = 644
      Height = 60
      DataSource = dsPessoas
      Align = alClient
      Flat = True
      TabOrder = 0
    end
  end
  object pnlTabs: TPanel
    Left = 0
    Top = 0
    Width = 652
    Height = 457
    Align = alClient
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvLowered
    TabOrder = 1
    object pagPrincipal: TPageControl
      Left = 2
      Top = 2
      Width = 644
      Height = 449
      ActivePage = tabCadastro
      Align = alClient
      TabOrder = 0
      object tabPesquisa: TTabSheet
        Caption = 'Pesquisa'
        object pnlPesquisa: TPanel
          Left = 0
          Top = 0
          Width = 636
          Height = 421
          Align = alClient
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelOuter = bvLowered
          TabOrder = 0
          DesignSize = (
            632
            417)
          object dbgPesquisar: TDBGrid
            Left = 8
            Top = 71
            Width = 615
            Height = 341
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataSource = dsPessoas
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = dbgPesquisarDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'ID'
                Width = 16
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME'
                Width = 174
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LOGRADOURO'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'SEMNUMERO'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'NUMERO'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'BAIRRO'
                Width = 113
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CIDADE'
                Width = 85
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UF'
                Width = 22
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TELEFONE'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMAIL'
                Width = 85
                Visible = True
              end>
          end
          object GroupBox1: TGroupBox
            Left = 8
            Top = 8
            Width = 615
            Height = 57
            Anchors = [akLeft, akTop, akRight, akBottom]
            Caption = ' | Pesquisar | '
            TabOrder = 1
            DesignSize = (
              615
              57)
            object lblPesquisarID: TLabel
              Left = 35
              Top = 27
              Width = 15
              Height = 13
              Caption = 'ID:'
            end
            object lblPesquisarNome: TLabel
              Left = 115
              Top = 27
              Width = 31
              Height = 13
              Caption = 'Nome:'
            end
            object btnPesquisar: TButton
              Left = 537
              Top = 10
              Width = 75
              Height = 42
              Anchors = [akTop, akRight, akBottom]
              Caption = 'Pesquisar'
              TabOrder = 0
              OnClick = btnPesquisarClick
            end
            object edtPesquisarID: TEdit
              Left = 56
              Top = 24
              Width = 49
              Height = 21
              NumbersOnly = True
              TabOrder = 1
            end
            object edtPesquisarNome: TEdit
              Left = 152
              Top = 24
              Width = 153
              Height = 21
              TabOrder = 2
            end
            object btnTodos: TButton
              Left = 464
              Top = 10
              Width = 75
              Height = 42
              Anchors = [akTop, akRight, akBottom]
              Caption = 'Todos'
              TabOrder = 3
              OnClick = btnTodosClick
            end
          end
        end
      end
      object tabCadastro: TTabSheet
        Caption = 'Cadastro'
        ImageIndex = 1
        object pnlDados: TPanel
          Left = 0
          Top = 0
          Width = 636
          Height = 421
          Align = alClient
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object lblNome: TLabel
            Left = 16
            Top = 16
            Width = 31
            Height = 13
            Caption = 'Nome:'
            FocusControl = edtNome
          end
          object lblLogradouro: TLabel
            Left = 16
            Top = 56
            Width = 59
            Height = 13
            Caption = 'Logradouro:'
            FocusControl = edtLogradouro
          end
          object lblNumero: TLabel
            Left = 487
            Top = 56
            Width = 41
            Height = 13
            Caption = 'N'#250'mero:'
            FocusControl = edtNumero
          end
          object lblBairro: TLabel
            Left = 16
            Top = 99
            Width = 32
            Height = 13
            Caption = 'Bairro:'
            FocusControl = edtBairro
          end
          object lblCidade: TLabel
            Left = 432
            Top = 99
            Width = 37
            Height = 13
            Caption = 'Cidade:'
            FocusControl = edtCidade
          end
          object lblUF: TLabel
            Left = 571
            Top = 96
            Width = 17
            Height = 13
            Caption = 'UF:'
          end
          object lblTelefone: TLabel
            Left = 16
            Top = 147
            Width = 46
            Height = 13
            Caption = 'Telefone:'
            FocusControl = edtTelefone
          end
          object lblEmail: TLabel
            Left = 176
            Top = 147
            Width = 28
            Height = 13
            Caption = 'Email:'
            FocusControl = edtEmail
          end
          object edtNome: TDBEdit
            Left = 16
            Top = 32
            Width = 400
            Height = 21
            DataField = 'NOME'
            DataSource = dsPessoas
            TabOrder = 0
          end
          object edtLogradouro: TDBEdit
            Left = 16
            Top = 72
            Width = 400
            Height = 21
            DataField = 'LOGRADOURO'
            DataSource = dsPessoas
            TabOrder = 1
          end
          object edtNumero: TDBEdit
            Left = 487
            Top = 72
            Width = 134
            Height = 21
            DataField = 'NUMERO'
            DataSource = dsPessoas
            TabOrder = 3
          end
          object edtBairro: TDBEdit
            Left = 16
            Top = 115
            Width = 400
            Height = 21
            DataField = 'BAIRRO'
            DataSource = dsPessoas
            TabOrder = 4
          end
          object edtCidade: TDBEdit
            Left = 432
            Top = 115
            Width = 121
            Height = 21
            DataField = 'CIDADE'
            DataSource = dsPessoas
            TabOrder = 5
          end
          object edtTelefone: TDBEdit
            Left = 16
            Top = 163
            Width = 143
            Height = 21
            DataField = 'TELEFONE'
            DataSource = dsPessoas
            MaxLength = 14
            TabOrder = 7
          end
          object edtEmail: TDBEdit
            Left = 176
            Top = 163
            Width = 200
            Height = 21
            DataField = 'EMAIL'
            DataSource = dsPessoas
            TabOrder = 8
          end
          object chkSemNumero: TDBCheckBox
            Left = 434
            Top = 74
            Width = 41
            Height = 17
            Alignment = taLeftJustify
            Caption = 'S/N?'
            DataField = 'SEMNUMERO'
            DataSource = dsPessoas
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnExit = chkSemNumeroExit
          end
          object cbxUF: TDBComboBox
            Left = 571
            Top = 115
            Width = 50
            Height = 21
            DataField = 'UF'
            DataSource = dsPessoas
            Items.Strings = (
              'RO'
              'AC'
              'AM'
              'RR'
              'PA'
              'AP'
              'TO'
              'MA'
              'PI'
              'CE'
              'RN'
              'PB'
              'PE'
              'AL'
              'SE'
              'BA'
              'MG'
              'ES'
              'RJ'
              'SP'
              'PR'
              'SC'
              'RS'
              'MS'
              'MT'
              'GO'
              'DF')
            TabOrder = 6
          end
        end
      end
    end
  end
  object dsPessoas: TDataSource
    DataSet = dmCadastroPessoas.fdQueryPessoas
    Left = 824
    Top = 528
  end
end
