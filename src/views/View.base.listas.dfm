inherited ViewBaseListas: TViewBaseListas
  BorderStyle = bsNone
  Caption = 'ViewBaseListas'
  ClientHeight = 600
  ClientWidth = 1080
  Position = poDefault
  StyleElements = [seFont, seClient, seBorder]
  OnShow = FormShow
  ExplicitWidth = 1080
  ExplicitHeight = 600
  TextHeight = 15
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 1080
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = 2434341
    ParentBackground = False
    TabOrder = 0
    OnMouseDown = pnlTopoMouseDown
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 55
      Top = 6
      Width = 966
      Height = 26
      Cursor = crHandPoint
      Margins.Left = 20
      Margins.Top = 6
      Align = alClient
      Caption = 'lblTitulo'
      Color = 2434341
      Font.Charset = BALTIC_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Roboto Bk'
      Font.Style = [fsItalic]
      ParentColor = False
      ParentFont = False
      OnMouseDown = pnlTopoMouseDown
      ExplicitWidth = 71
      ExplicitHeight = 24
    end
    object pnlIcon: TPanel
      Left = 0
      Top = 0
      Width = 35
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      Color = 2434341
      TabOrder = 0
      object imgIcon: TImage
        Left = 0
        Top = 0
        Width = 35
        Height = 35
        Cursor = crHandPoint
        Align = alClient
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000002E0000
          002E080600000057B92B37000000097048597300000EC400000EC401952B0E1B
          000004A369545874584D4C3A636F6D2E61646F62652E786D7000000000003C3F
          787061636B657420626567696E3D27EFBBBF272069643D2757354D304D704365
          6869487A7265537A4E54637A6B633964273F3E0A3C783A786D706D6574612078
          6D6C6E733A783D2761646F62653A6E733A6D6574612F273E0A3C7264663A5244
          4620786D6C6E733A7264663D27687474703A2F2F7777772E77332E6F72672F31
          3939392F30322F32322D7264662D73796E7461782D6E7323273E0A0A203C7264
          663A4465736372697074696F6E207264663A61626F75743D27270A2020786D6C
          6E733A4174747269623D27687474703A2F2F6E732E6174747269627574696F6E
          2E636F6D2F6164732F312E302F273E0A20203C4174747269623A4164733E0A20
          20203C7264663A5365713E0A202020203C7264663A6C69207264663A70617273
          65547970653D275265736F75726365273E0A20202020203C4174747269623A43
          7265617465643E323032352D30312D30333C2F4174747269623A437265617465
          643E0A20202020203C4174747269623A45787449643E33333266656565612D36
          3261352D346465362D613239612D6634336538663330353538663C2F41747472
          69623A45787449643E0A20202020203C4174747269623A466249643E35323532
          36353931343137393538303C2F4174747269623A466249643E0A20202020203C
          4174747269623A546F756368547970653E323C2F4174747269623A546F756368
          547970653E0A202020203C2F7264663A6C693E0A2020203C2F7264663A536571
          3E0A20203C2F4174747269623A4164733E0A203C2F7264663A44657363726970
          74696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F
          75743D27270A2020786D6C6E733A64633D27687474703A2F2F7075726C2E6F72
          672F64632F656C656D656E74732F312E312F273E0A20203C64633A7469746C65
          3E0A2020203C7264663A416C743E0A202020203C7264663A6C6920786D6C3A6C
          616E673D27782D64656661756C74273E49636F6E205643524544202D20313C2F
          7264663A6C693E0A2020203C2F7264663A416C743E0A20203C2F64633A746974
          6C653E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A44
          65736372697074696F6E207264663A61626F75743D27270A2020786D6C6E733A
          7064663D27687474703A2F2F6E732E61646F62652E636F6D2F7064662F312E33
          2F273E0A20203C7064663A417574686F723E4E4154414E4941532053414E544F
          5320534F555A413C2F7064663A417574686F723E0A203C2F7264663A44657363
          72697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A
          61626F75743D27270A2020786D6C6E733A786D703D27687474703A2F2F6E732E
          61646F62652E636F6D2F7861702F312E302F273E0A20203C786D703A43726561
          746F72546F6F6C3E43616E7661202852656E64657265722920646F633D444147
          624B72305550443820757365723D5541456F33745F443644633C2F786D703A43
          726561746F72546F6F6C3E0A203C2F7264663A4465736372697074696F6E3E0A
          3C2F7264663A5244463E0A3C2F783A786D706D6574613E0A3C3F787061636B65
          7420656E643D2772273F3E57B9A55100000A1A4944415478DAED987B7054D51D
          C77FE7DCE7EE6637C96E42A204028658CC286875788C48F04515A8E3A35AC6B6
          334A29BE6A5BA7B5635B14ECD8514A0535EDA855141CA9DAB12D141F8881421F
          08042150C09004484242424236C93EEEDDFB38E7F477EF268AB6334208D53FF2
          CB9CDC9BCDBDBFFB39BFF3FDFD7EE72E81B368D12BA70440801DDFBC8D0DB56F
          72568867CC808A6B4B43F1D623ABA130D19168687AD0C80B27E1D9A3FF7569CE
          8DD15C3C04536BE2ED5F3CF8533F84F1EDFBEE38C20E3D0FB90939D0A9FFDE6A
          80074D7A2C05EF7C0AFA22757CE0226D7CB0C7AA339CF8136DD5671FBCA2027F
          1D25302229A0124F1FC5B108C7761C0F00B9B461FAACBDEAB637C19454620937
          5013FE793215AFE206B361CBC7E0B3F15010BE311643F02D08FEE1D0835F7105
          4071310A57235F374DB24365C519D138DA2D8E8F10956E982F7625F218305243
          525292C6B5317A4ECF79EDAF4207C9A39D4064A6C6C92A3AC7A0C9ED508BCA47
          C3688F8A3D54E2C12710FC38826F1C1AF08202A04545307A7C892617D2316961
          5CCD883BD320E6575DC93E574819226417406104640B80E29098009921A9205C
          C39C94B3AE842240DB1D7AD358975C2002BC171A07BDD69F035E5949664D9A1E
          6E4CD5CCE9B2937764C09AC6A9AB098402C901A238C43F971D0252C6FF0CFCFF
          B9082E702220C42747FCDC9B939C148F919B6DCDDC040DD9A80F1D786121C05D
          774171C7AE9B0C1E5F680B7782A09CE2538990FA41153B0B2923AC649D0C8D47
          01C28B32827AD1F6A0BD6803455005407B3558656C4A2E840C24870E1CA18B66
          CDD4CE8DA4977F946A9B27885080F6034B9E1C1050F1203D4047F8C02A9EEB2E
          8800039EC3418439661DFA0AE151C307B4226DC2CD465E1210DC9FB32B559598
          0B3D6726964FC0A74F87399513F37774EC59DDE71A3381082FCA20244EBC4812
          C5F61F2C3941004671F95D2EC25D2EE4265D9ECB3884C11121E14204180E0111
          01A4391C239BF33456D142BC7B7115B862AB7D6C9EFB4DD771ABC11DBC5CC840
          A4435F5302A1E0B89509C7B819A52181C4BDA40341FC2863C45C6495D2D21EED
          4348989D2C99EE7499D90D0EEBE5264B085318D4410130C280091B087143B74D
          78D4288D4F712F6DA69E84BCA8130997F17EEDFE4CDC588151B7CE0C1C13F186
          CA09DFDB70F4832A845620648118750268670C38333DFD7A3211BA495AD34F1D
          7F04C5B30338EF43DD1A3810D28F1DC773EE7BB4F1AF6B54C81B7BF19AF4399D
          B3D9252DB43F4105A820B4C581A5995DC6E39086BEC183979642CEB5950122EA
          6B6C625F400A93A090F811F850DDCD2F8CDDE2C89843B28972B18562AAEDE6D2
          F8BD1CDCB7600C4AA2143D6C39C99BD7886640B619DD0D242754F68E35AA77A6
          5B1EA77E59C40415AA00FDD78197321BCC87C181D36AF39F069F14852933BF31
          B9F6F8CEF7488EA9D2BA636F9BEFA736EB17466D312BF21CA37D1E34F1EAB36C
          4BDDEE6FACFB6C66FD2578672E8B5C12553AEE3E62F9B08B0122E9029A7F7E31
          695EBD8F556EAE849DD7EFDF6415F655B21297FA1AF7E0512EDAF2C06A6BADF9
          0B5CA796C183D74E80716F97DFD7D25AFFB47ED4D89A7CF7F08BA25854876F8A
          8DB3CF913609C7F44BA107EED7E1E5E2FB253326AEED9BD57E4F3AD63DB3B0EB
          DC279AA307ABC78C9B1849ECED7AC88E1A63943679E1D886694D07CE7FFF9F76
          CC9AC4F35CF441FC52892551684B10FCAFE622043F3C78F0C58B4929DDFD70C7
          89BA454A9AB5B87F3A76BB3D2FB33D705568AA7D986F210986CBCCBDAA202422
          1BE269F2606441FEDEDE512736B17C47567AF4ADEE03CEBC825523A777F7B63D
          CB0A99A4EED157E46F2858D4736FD7463B6C8D173A2703D1F66AB9FE70E04594
          CAAF502ACD83078F4830ED3B377C77A7BEFF79AE9824749CAECB49CAF3C55C79
          74BBD9BC436AE3141B08F1128B506AD1E7E55FEAB707DE332E49AE67969BAB56
          EB1BCC15E9A5A55B2F286A6D6A7805B0D9C82FA8AB55435F61FC2CF506539D12
          BC97F437244C4E22D47BF4E5768DB90C6BCAB1C1834F28267997965538B19E2D
          8EDE998F7A46DF7A5D6854CECB27CE6959423F22D829FD072311B8F22AAD4A31
          E5C7D58BD58A647DEA1A7B7BA64970BE31B83DA70327F56DE7DF56B95D9BD91F
          BC335C6FDE955AC76D5E807767238E3EA82C7175B6F648A6D5780EA5121F3C38
          5AEC8F23293998F3729F74FC5B84D934DBCEB102047189991F2922B275986BEB
          82AFA7DFCDFC14E6DB1DB011DB8E895734410A2B8A803D38C524E4E38FF995AA
          CB26D54FDEB556F4F0205613826510FC52980E24D864F721772A7B050AF34D28
          EA16F0DB4182C3EF00C646278EEE700E57BBDD7619B83C1BE5FE3D07577876EF
          81E54CEDD69B721A7357A667273ED0A38123C5B923DB61896D1CB8EA004020EB
          74527412745E18FF4113342E830E1F9A40C807E7E1DDD143CEAD998565CBCADF
          3B5EEE8E0885D2E5536965E3EB6FADAAF7CBE869817BF63780719B2EB8ACE5EA
          C36FB256368AF6123FCAFD3BBC2C78562E30D04C888C1A906946A272A72C7943
          E9D6542DC95D6E264724A658609E8F772034DE14D071E219211BB223A589C118
          EE34335C0AAE0FBD6E2FB39FB6E299066C5FA7BCF1FAF4260BE1F31F8D4D3097
          98CF388A7539D4235E262B150F7C607B7A32FC80763FFE9FD47F3D560F6F9305
          A108910323BDED0DCE342EC0EC0292C0453CA81C255574BDF57EE65F78D556F4
          D484473E3870CFAEC415CDD50A95C9CA7C7BB6BDC0359C527AD4DB938AACD695
          93E0B1A9E0DE033E030D3E340698848A21A28F851C4911096282E1B4B9F2CE78
          33F903A971D6D8352CC176216A2D5E7DDAADFF7FBF484CC4310D14B94E2953E6
          683F3227A716D04E0AFD65311B61E524D8CF42073CE818C955CB21268704C5A7
          24ED8C9D9A5BF782B1AD671F4FF18F101893C2AF2AA71CE5CF071FB085F88A19
          2D0A1B9727375B7DE6C5BE5E257FC32BF49DC5494829362F8D6BACD0223CDF25
          244C050911C2390DD2823124AAE64180EAC2265CF015F1BF77FDB86EA5B0F99A
          C144F8F4C0D1425D1128D85234AD3576E46D4CA8F040A2AA6DDA21F213BA8C19
          BC9B2B4CC7764E255916FADCC0ADA9DB32D78BF228A52482DD5685E05E3864DE
          D2F092DD61FE19277FF04CA14F09DCDBF1859F8D50ED1F8179F19213CFF030D7
          40F525C3020DA135B195B1FB5AAF6EE925DD84E4478AA62566C45F73C74101A8
          F81A240521544B1B9CF95D6FD88DE67A84DE811EDDFF0FB8678B0082D7E6C8E1
          D72277C62F3FF1A4536A87F02DC7EFA6412B5413B30A1E17825A9D72FB73768C
          8D06390054927878ADD8965E9C7CC7ED629B11BA063D3943017DEAE0FD9197AF
          93257D43F04A7E9DFC9855264DE465BDAAC875FCA42424EB8A30EAE8CDF231E9
          495A9D7A37B35D38E203FCD893C7907E7F78FADF64CDC0D7CF8381622D2F6F16
          54D06BD8D4BEF34489D0A94992D201E860B56E93BDCDA977D3CCAB1CFBF08E5E
          1C67F455C4D0807B96E775410D5F7D9D5C9AC88C002F0B91521091C2B8F621A6
          370C1864A93B7BE027DB40ED36CF16E2D902FF826C187C187C18FC4B6AC3E0C3
          E0C3E05F521B061F063F45FB0FFC78BE6B3D42716B0000000049454E44AE4260
          82}
        OnMouseDown = pnlTopoMouseDown
        ExplicitLeft = 8
        ExplicitTop = 8
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
    end
    object pnlFechar: TPanel
      Left = 1024
      Top = 0
      Width = 56
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      Color = 2434341
      ParentBackground = False
      TabOrder = 1
      object btnExit: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 0
        Width = 50
        Height = 35
        Cursor = crHandPoint
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alClient
        Caption = 'Sair'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = 3792180
        Font.Height = -19
        Font.Name = 'Roboto Bk'
        Font.Style = []
        ParentFont = False
        OnClick = btnExitClick
        OnMouseDown = btnExitMouseDown
        ExplicitLeft = 0
        ExplicitWidth = 182
      end
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 565
    Width = 1080
    Height = 35
    Align = alBottom
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    Color = 2434341
    ParentBackground = False
    TabOrder = 1
    object btnNovo: TSpeedButton
      AlignWithMargins = True
      Left = 533
      Top = 3
      Width = 104
      Height = 29
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Down = True
      Caption = 'Novo'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 3792180
      Font.Height = -15
      Font.Name = 'Roboto Lt'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      OnClick = btnNovoClick
      ExplicitLeft = 536
      ExplicitTop = 0
      ExplicitHeight = 35
    end
    object btnEditar: TSpeedButton
      AlignWithMargins = True
      Left = 643
      Top = 3
      Width = 104
      Height = 29
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = 'Editar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 3792180
      Font.Height = -15
      Font.Name = 'Roboto Lt'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      OnClick = btnEditarClick
      ExplicitLeft = 559
    end
    object btnCancelar: TSpeedButton
      AlignWithMargins = True
      Left = 753
      Top = 3
      Width = 104
      Height = 29
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = 'Cancelar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 3792180
      Font.Height = -15
      Font.Name = 'Roboto Lt'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      OnClick = btnCancelarClick
      ExplicitLeft = 551
    end
    object btnSalvar: TSpeedButton
      AlignWithMargins = True
      Left = 863
      Top = 3
      Width = 104
      Height = 29
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = 'Salvar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 3792180
      Font.Height = -15
      Font.Name = 'Roboto Lt'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      OnClick = btnSalvarClick
      ExplicitLeft = 559
    end
    object btnExcluir: TSpeedButton
      AlignWithMargins = True
      Left = 973
      Top = 3
      Width = 104
      Height = 29
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = 'Excluir'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 3792180
      Font.Height = -15
      Font.Name = 'Roboto Lt'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      OnClick = btnExcluirClick
      ExplicitLeft = 543
    end
  end
  object pnlLinhaFundo: TPanel
    Left = 0
    Top = 35
    Width = 1080
    Height = 530
    Align = alClient
    BevelOuter = bvNone
    Color = 2434341
    ParentBackground = False
    TabOrder = 2
    object CardPanel_Listas: TCardPanel
      AlignWithMargins = True
      Left = 1
      Top = 0
      Width = 1078
      Height = 530
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alClient
      ActiveCard = card_cadastro
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      OnCardChange = CardPanel_ListasCardChange
      object card_pesquisa: TCard
        Left = 0
        Top = 0
        Width = 1078
        Height = 530
        Caption = 'card_pesquisa'
        CardIndex = 0
        TabOrder = 0
        object pnlTituloPesquisa: TPanel
          Left = 0
          Top = 0
          Width = 1078
          Height = 81
          Align = alTop
          BevelOuter = bvNone
          Color = 14869218
          ParentBackground = False
          TabOrder = 0
          object lblTituloPesquisa: TLabel
            Left = 5
            Top = 6
            Width = 81
            Height = 30
            Caption = 'Pesquisa'
            Font.Charset = ANSI_CHARSET
            Font.Color = 5263440
            Font.Height = -22
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object edtPesquisa: TSearchBox
            Left = 5
            Top = 42
            Width = 1015
            Height = 29
            BevelInner = bvNone
            BevelOuter = bvNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TextHint = 'Digite aqui sua pesquisa!'
          end
        end
        object DBG_dados: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 86
          Width = 1070
          Height = 439
          Cursor = crHandPoint
          Margins.Left = 5
          Margins.Top = 5
          Margins.Bottom = 5
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsDados
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
      object card_cadastro: TCard
        Left = 0
        Top = 0
        Width = 1078
        Height = 530
        Caption = 'card_cadastro'
        CardIndex = 1
        TabOrder = 1
        object pnlTituloCadastro: TPanel
          Left = 0
          Top = 0
          Width = 1078
          Height = 60
          Align = alTop
          BevelOuter = bvNone
          Color = 14869218
          ParentBackground = False
          TabOrder = 0
          object lblTituloCadastro: TLabel
            AlignWithMargins = True
            Left = 8
            Top = 15
            Width = 198
            Height = 42
            Margins.Left = 8
            Margins.Top = 15
            Align = alLeft
            Caption = 'Cadastro de Produto'
            Font.Charset = ANSI_CHARSET
            Font.Color = 5263440
            Font.Height = -22
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
            ExplicitHeight = 30
          end
          object btnVoltarPesquisa: TSpeedButton
            AlignWithMargins = True
            Left = 971
            Top = 3
            Width = 104
            Height = 54
            Cursor = crHandPoint
            Align = alRight
            GroupIndex = 1
            Caption = 'Voltar'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = 5395026
            Font.Height = -18
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            ExplicitLeft = 543
            ExplicitHeight = 29
          end
        end
      end
    end
  end
  object dsDados: TDataSource
    Left = 569
    Top = 323
  end
end
