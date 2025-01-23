object ServiceConexao: TServiceConexao
  OnCreate = DataModuleCreate
  Height = 316
  Width = 460
  PixelsPerInch = 120
  object FDConn: TFDConnection
    Params.Strings = (
      'Protocol=TCPIP'
      'Server=localhost'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Database=C:\workspace\Delphi\Banco\DADOS.FDB'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 30
    Top = 30
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 390
    Top = 30
  end
  object FBDriverLink: TFDPhysFBDriverLink
    Left = 390
    Top = 100
  end
  object QRY_filial: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from filial where fil_codigo = :codigo  ')
    Left = 30
    Top = 120
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_filialFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
      Origin = 'FIL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_filialFIL_RAZAO: TStringField
      FieldName = 'FIL_RAZAO'
      Origin = 'FIL_RAZAO'
      Size = 100
    end
    object QRY_filialFIL_FANTASIA: TStringField
      FieldName = 'FIL_FANTASIA'
      Origin = 'FIL_FANTASIA'
      Size = 100
    end
    object QRY_filialFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Origin = 'FIL_CNPJ'
      Size = 50
    end
    object QRY_filialFIL_TELEFONE: TStringField
      FieldName = 'FIL_TELEFONE'
      Origin = 'FIL_TELEFONE'
      Size = 50
    end
  end
end
