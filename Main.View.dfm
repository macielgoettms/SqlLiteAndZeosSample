object mainView: TmainView
  Left = 0
  Top = 0
  Caption = 'SQLite And ZeosLib Sample'
  ClientHeight = 455
  ClientWidth = 897
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 447
    Top = 41
    Width = 450
    Height = 414
    Align = alRight
    Caption = 'Clientes'
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 48
      Width = 8
      Height = 13
      Caption = 'id'
      FocusControl = dbedtid1
    end
    object lbl2: TLabel
      Left = 16
      Top = 88
      Width = 26
      Height = 13
      Caption = 'nome'
      FocusControl = dbmmonome1
    end
    object lbl3: TLabel
      Left = 16
      Top = 132
      Width = 24
      Height = 13
      Caption = 'email'
      FocusControl = dbmmoemail
    end
    object lbl4: TLabel
      Left = 216
      Top = 132
      Width = 40
      Height = 13
      Caption = 'telefone'
      FocusControl = dbmmotelefone
    end
    object dbnvgr2: TDBNavigator
      Left = 2
      Top = 15
      Width = 446
      Height = 25
      DataSource = dsClientes
      Align = alTop
      TabOrder = 0
    end
    object dbedtid1: TDBEdit
      Left = 16
      Top = 64
      Width = 121
      Height = 21
      DataField = 'id'
      DataSource = dsClientes
      TabOrder = 1
    end
    object dbmmonome1: TDBMemo
      Left = 16
      Top = 104
      Width = 185
      Height = 21
      DataField = 'nome'
      DataSource = dsClientes
      TabOrder = 2
    end
    object dbmmoemail: TDBMemo
      Left = 16
      Top = 148
      Width = 185
      Height = 21
      DataField = 'email'
      DataSource = dsClientes
      TabOrder = 3
    end
    object dbmmotelefone: TDBMemo
      Left = 216
      Top = 148
      Width = 185
      Height = 21
      DataField = 'telefone'
      DataSource = dsClientes
      TabOrder = 4
    end
    object dbgrd2: TDBGrid
      Left = 2
      Top = 192
      Width = 446
      Height = 220
      Align = alBottom
      DataSource = dsClientes
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Width = 148
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          Width = 139
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefone'
          Width = 87
          Visible = True
        end>
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 897
    Height = 41
    Align = alTop
    TabOrder = 1
    object btnConnect: TButton
      Left = 1
      Top = 1
      Width = 136
      Height = 39
      Align = alLeft
      Caption = 'Connect'
      TabOrder = 0
      OnClick = btnConnectClick
    end
  end
  object grp2: TGroupBox
    Left = 0
    Top = 41
    Width = 450
    Height = 414
    Align = alLeft
    Caption = 'Produtos'
    TabOrder = 2
    object lbl5: TLabel
      Left = 16
      Top = 48
      Width = 8
      Height = 13
      Caption = 'id'
      FocusControl = dbedtid
    end
    object lbl6: TLabel
      Left = 16
      Top = 88
      Width = 31
      Height = 13
      Caption = 'codigo'
      FocusControl = dbedtcodigo
    end
    object lbl7: TLabel
      Left = 16
      Top = 132
      Width = 26
      Height = 13
      Caption = 'nome'
      FocusControl = dbmmonome
    end
    object lbl8: TLabel
      Left = 216
      Top = 132
      Width = 24
      Height = 13
      Caption = 'valor'
      FocusControl = dbedtvalor
    end
    object dbnvgr1: TDBNavigator
      Left = 2
      Top = 15
      Width = 446
      Height = 25
      DataSource = dsProdutos
      Align = alTop
      TabOrder = 0
    end
    object dbedtid: TDBEdit
      Left = 16
      Top = 64
      Width = 121
      Height = 21
      DataField = 'id'
      DataSource = dsProdutos
      TabOrder = 1
    end
    object dbedtcodigo: TDBEdit
      Left = 16
      Top = 104
      Width = 121
      Height = 21
      DataField = 'codigo'
      DataSource = dsProdutos
      TabOrder = 2
    end
    object dbmmonome: TDBMemo
      Left = 16
      Top = 148
      Width = 185
      Height = 21
      DataField = 'nome'
      DataSource = dsProdutos
      TabOrder = 3
    end
    object dbedtvalor: TDBEdit
      Left = 216
      Top = 148
      Width = 121
      Height = 21
      DataField = 'valor'
      DataSource = dsProdutos
      TabOrder = 4
    end
    object dbgrd1: TDBGrid
      Left = 2
      Top = 192
      Width = 446
      Height = 220
      Align = alBottom
      DataSource = dsProdutos
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'codigo'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Width = 182
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor'
          Visible = True
        end>
    end
  end
  object dsClientes: TDataSource
    DataSet = mainModel.TableCliente
    Left = 464
    Top = 96
  end
  object dsProdutos: TDataSource
    DataSet = mainModel.TableProduto
    Left = 136
    Top = 96
  end
end
