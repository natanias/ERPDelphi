object DataModule1: TDataModule1
  Height = 439
  Width = 628
  PixelsPerInch = 120
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=F:\Sistemas\Tecno\VCRED\Mercantil\VCRED.GDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    Left = 30
    Top = 20
  end
  object QRY_mercantil: TFDQuery
    Active = True
    Connection = FDConn
    SQL.Strings = (
      'SELECT'
      '    itens.cod ,'
      '    itens.refer, '
      '    itens.nome As Descricao,'
      '    itens.unid AS UN, '
      '    itens.marca,'
      '    itens.venda,'
      '    itens.prazo'
      '  '
      'FROM '
      '    itens;')
    Left = 150
    Top = 20
  end
  object QRY_2: TFDQuery
    SQL.Strings = (
      'select '
      'cnpjcliente,'
      'razaosocial,'
      'nomefantasia'
      ''
      ' from inflg')
    Left = 248
    Top = 24
    object QRY_2CNPJCLIENTE: TStringField
      FieldName = 'CNPJCLIENTE'
      Origin = 'CNPJCLIENTE'
      Required = True
      EditMask = '99.999.999/9999-99;0'
      Size = 14
    end
    object QRY_2RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Required = True
      Size = 100
    end
    object QRY_2NOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Required = True
      Size = 100
    end
  end
end
