object frmCadastroProdutos: TfrmCadastroProdutos
  Left = 0
  Top = 0
  Caption = 'frmCadastroProdutos'
  ClientHeight = 564
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoes: TPanel
    Left = 728
    Top = 0
    Width = 124
    Height = 564
    Align = alRight
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvLowered
    TabOrder = 0
  end
  object pnlTabs: TPanel
    Left = 0
    Top = 0
    Width = 728
    Height = 564
    Align = alClient
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitWidth = 667
    object pagPrincipal: TPageControl
      Left = 2
      Top = 2
      Width = 720
      Height = 556
      ActivePage = tabPesquisa
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 704
      object tabPesquisa: TTabSheet
        Caption = 'Pesquisa'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 712
          Height = 528
          Align = alClient
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelOuter = bvLowered
          TabOrder = 0
          ExplicitLeft = 712
          ExplicitWidth = 140
          ExplicitHeight = 564
        end
      end
      object tabCadastro: TTabSheet
        Caption = 'Cadastro'
        ImageIndex = 1
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 712
          Height = 528
          Align = alClient
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelOuter = bvLowered
          TabOrder = 0
          ExplicitLeft = 712
          ExplicitWidth = 140
          ExplicitHeight = 564
        end
      end
    end
  end
end
