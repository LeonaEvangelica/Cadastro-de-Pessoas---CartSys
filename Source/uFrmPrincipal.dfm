object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Cadastro de Pessoas - CartSys'
  ClientHeight = 495
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mmMenuPrincipal
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object mmMenuPrincipal: TMainMenu
    Left = 776
    Top = 440
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object CadastrodePessoas1: TMenuItem
        Caption = 'Cadastro de Pessoas'
      end
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
      object RelatriodePessoas1: TMenuItem
        Caption = 'Relat'#243'rio de Pessoas'
      end
    end
  end
end
