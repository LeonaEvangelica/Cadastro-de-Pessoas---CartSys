object dmCadastroPessoas: TdmCadastroPessoas
  OldCreateOrder = False
  Height = 428
  Width = 505
  object fdConnection: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      
        'Database=C:\Users\danie\OneDrive\Documentos\Programa'#231#227'o\Delphi\C' +
        'adastro-de-Pessoas---CartSys\DB\CARTSYS.FDB'
      'Port=3050'
      'Server=Localhost'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Transaction = fdTransaction
    UpdateTransaction = fdTransaction
    Left = 8
    Top = 8
  end
  object fdTransaction: TFDTransaction
    Connection = fdConnection
    Left = 40
    Top = 8
  end
  object fdWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 72
    Top = 8
  end
  object fdFBLink: TFDPhysFBDriverLink
    VendorLib = 'C:\Windows\System32\FBCLIENT.DLL'
    Left = 104
    Top = 8
  end
  object fdQueryPessoas: TFDQuery
    Active = True
    AfterInsert = fdQueryPessoasAfterInsert
    AfterEdit = fdQueryPessoasAfterEdit
    BeforePost = fdQueryPessoasBeforePost
    AfterPost = fdQueryPessoasAfterPost
    Connection = fdConnection
    Transaction = fdTransaction
    UpdateTransaction = fdTransaction
    SQL.Strings = (
      
        'SELECT ID, NOME, LOGRADOURO, SEMNUMERO, NUMERO, BAIRRO, CIDADE, ' +
        'UF, TELEFONE, EMAIL FROM PESSOAS ORDER BY ID')
    Left = 8
    Top = 56
    object fdQueryPessoasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQueryPessoasNOME: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 500
    end
    object fdQueryPessoasLOGRADOURO: TWideStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'LOGRADOURO'
      Origin = 'LOGRADOURO'
      Size = 500
    end
    object fdQueryPessoasSEMNUMERO: TWideStringField
      DisplayLabel = 'S/N?'
      FieldName = 'SEMNUMERO'
      Origin = 'SEMNUMERO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object fdQueryPessoasNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object fdQueryPessoasBAIRRO: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 150
    end
    object fdQueryPessoasCIDADE: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 150
    end
    object fdQueryPessoasUF: TWideStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object fdQueryPessoasTELEFONE: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      EditMask = '!\(99\)00000-0000;0;_'
      Size = 11
    end
    object fdQueryPessoasEMAIL: TWideStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 300
    end
  end
  object fdQueryGeral: TFDQuery
    Connection = fdConnection
    Transaction = fdTransaction
    UpdateTransaction = fdTransaction
    Left = 8
    Top = 96
  end
end
