object mainModel: TmainModel
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 213
  Width = 215
  object ZConnection: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    TransactIsolationLevel = tiReadCommitted
    HostName = ''
    Port = 0
    Database = 'D:\Projetos\Delphi\SqlLiteAndZeosSample\DataBase\db.sqlite'
    User = ''
    Password = ''
    Protocol = 'sqlite-3'
    Left = 40
    Top = 16
  end
  object TableCliente: TZTable
    Connection = ZConnection
    UpdateObject = ZUpdateSQLCliente
    TableName = 'cliente'
    Left = 40
    Top = 72
    object TableClienteid: TLargeintField
      FieldName = 'id'
    end
    object TableClientenome: TWideMemoField
      FieldName = 'nome'
      OnGetText = TableClientenomeGetText
      BlobType = ftWideMemo
    end
    object TableClienteemail: TWideMemoField
      FieldName = 'email'
      OnGetText = TableClienteemailGetText
      BlobType = ftWideMemo
    end
    object TableClientetelefone: TWideMemoField
      FieldName = 'telefone'
      OnGetText = TableClientetelefoneGetText
      BlobType = ftWideMemo
    end
  end
  object TableProduto: TZTable
    Connection = ZConnection
    UpdateObject = ZUpdateSQLProduto
    TableName = 'produto'
    Left = 149
    Top = 72
    object TableProdutoid: TLargeintField
      FieldName = 'id'
    end
    object TableProdutocodigo: TLargeintField
      FieldName = 'codigo'
    end
    object TableProdutonome: TWideMemoField
      FieldName = 'nome'
      OnGetText = TableProdutonomeGetText
      BlobType = ftWideMemo
    end
    object TableProdutovalor: TFloatField
      FieldName = 'valor'
    end
  end
  object ZUpdateSQLCliente: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM cliente'
      'WHERE'
      '  cliente.id = :OLD_id AND'
      '  cliente.nome = :OLD_nome AND'
      
        '  ((cliente.email IS NULL AND :OLD_email IS NULL) OR (cliente.em' +
        'ail = :OLD_email)) AND'
      
        '  ((cliente.telefone IS NULL AND :OLD_telefone IS NULL) OR (clie' +
        'nte.telefone = :OLD_telefone))')
    InsertSQL.Strings = (
      'INSERT INTO cliente'
      '  (id, nome, email, telefone)'
      'VALUES'
      '  (:id, :nome, :email, :telefone)')
    ModifySQL.Strings = (
      'UPDATE cliente SET'
      '  id = :id,'
      '  nome = :nome,'
      '  email = :email,'
      '  telefone = :telefone'
      'WHERE'
      '  cliente.id = :OLD_id AND'
      '  cliente.nome = :OLD_nome AND'
      
        '  ((cliente.email IS NULL AND :OLD_email IS NULL) OR (cliente.em' +
        'ail = :OLD_email)) AND'
      
        '  ((cliente.telefone IS NULL AND :OLD_telefone IS NULL) OR (clie' +
        'nte.telefone = :OLD_telefone))')
    UseSequenceFieldForRefreshSQL = False
    Left = 39
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'email'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'telefone'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_email'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_telefone'
        ParamType = ptUnknown
      end>
  end
  object ZUpdateSQLProduto: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM produto'
      'WHERE'
      
        '  ((produto.id IS NULL AND :OLD_id IS NULL) OR (produto.id = :OL' +
        'D_id)) AND'
      
        '  ((produto.codigo IS NULL AND :OLD_codigo IS NULL) OR (produto.' +
        'codigo = :OLD_codigo)) AND'
      
        '  ((produto.nome IS NULL AND :OLD_nome IS NULL) OR (produto.nome' +
        ' = :OLD_nome)) AND'
      
        '  ((produto.valor IS NULL AND :OLD_valor IS NULL) OR (produto.va' +
        'lor = :OLD_valor))')
    InsertSQL.Strings = (
      'INSERT INTO produto'
      '  (id, codigo, nome, valor)'
      'VALUES'
      '  (:id, :codigo, :nome, :valor)')
    ModifySQL.Strings = (
      'UPDATE produto SET'
      '  id = :id,'
      '  codigo = :codigo,'
      '  nome = :nome,'
      '  valor = :valor'
      'WHERE'
      
        '  ((produto.id IS NULL AND :OLD_id IS NULL) OR (produto.id = :OL' +
        'D_id)) AND'
      
        '  ((produto.codigo IS NULL AND :OLD_codigo IS NULL) OR (produto.' +
        'codigo = :OLD_codigo)) AND'
      
        '  ((produto.nome IS NULL AND :OLD_nome IS NULL) OR (produto.nome' +
        ' = :OLD_nome)) AND'
      
        '  ((produto.valor IS NULL AND :OLD_valor IS NULL) OR (produto.va' +
        'lor = :OLD_valor))')
    UseSequenceFieldForRefreshSQL = False
    Left = 144
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_valor'
        ParamType = ptUnknown
      end>
  end
end
