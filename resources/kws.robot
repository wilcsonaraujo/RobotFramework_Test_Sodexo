***Settings***
Documentation   aqui temos todas as palávras chaves de automação dos comportamentos

***Keywords***
Dado quando acesso o endereço "https://www.sodexobeneficios.com.br/index.htm"
    Go to       https://www.sodexobeneficios.com.br/index.htm
    
E desejo acessar minha conta como usuário
    Click Element   css:span[class=sod_label]
    Click Element   css:span[title=Usuário]

Quando submeto o meu CPF "${cpf}" 
    Wait until page contains element    id:cpfEmail
    input text   id:cpfEmail   ${cpf}

E submeto minha senha "${senha}"
    Wait until page contains element    id:password
    input text       id:password     ${senha}
    Click element       css:button[id=buttonLogin]

Então devo ser autenticado
    Wait Until Page Contains Element        css:div[class=card-main]

Então devo ver a mensagem "USUÁRIO E/OU SENHA INVÁLIDOS."
    Wait Until Page Contains Element	css:div[class=popup-content]  

Então devo ver a mensagem "CPF OU E-MAIL DEVE SER INFORMADO"
    Wait Until Page Contains Element	css:div[class=popup-content]       

Dado quando acesso meus cartões no endereço "https://www.sodexobeneficios.com.br/sodexo-club/meu-painel/meus-cartoes/saldo-e-extrato/"
    Go to   https://www.sodexobeneficios.com.br/sodexo-club/meu-painel/meus-cartoes/saldo-e-extrato/

Então devo escolher meu cartão "${cartao}"
    Wait Until Page Contains Element    css:span[id=card-select]
    Click element        css:span[id=card-select]
    Click Element        xpath:/html/body/main/section/section/section/div[2]/div[2]/div[1]/div/div[1]/form/div/div/span/span[2]/span/span[2]
    Click Element       css:button[id=buttonConsult]

E quando realizar a consulta devo vizualizar meu saldo
    Wait Until Page Contains Element    css:span[id=balance]

E ao consultar devo vizualizar minhas últimas compras nos últimos trinta dias
    Wait Until Page Contains element    css:tbody[id=bodyExtract]
    Click element   css:span[id=period-select]
    Click element   xpath:/html/body/main/section/section/section/div[2]/div[2]/div[2]/div/div[1]/form/div/div[1]/span/span[2]/span/span[4]
    Wait Until Page Contains element    css:table[class=info-table]

Dado quando estou logado e na pagina inicial do sodexo club "https://www.sodexobeneficios.com.br/sodexo-club/"
    Go to   https://www.sodexobeneficios.com.br/sodexo-club/

Quando desejo visualizar todas as promoções
    Click element       css:a[id=moreResults]
    sleep   10

E submeto meu estado "MG"
    Click element       xpath:/html/body/main/section/section/div/div/div[2]/div/span[1]/span[1]
    Click element       xpath:/html/body/main/section/section/div/div/div[2]/div/span[1]/span[2]/span/span[11]

cidade "Belo Horizonte"
    Click element       xpath:/html/body/main/section/section/div/div/div[2]/div/span[2]/span[1]
    Click element       xpath:/html/body/main/section/section/div/div/div[2]/div/span[2]/span[2]/span/span[3]

bairro "Castelo"
    Click element       xpath:/html/body/main/section/section/div/div/div[2]/div/span[3]/span[1]
    Click element       xpath:/html/body/main/section/section/div/div/div[2]/div/span[3]/span[2]/span/span[4]
    
Então devo visualizar os restaurantes com promoção para usuários do Sodexo
    Wait Until Page contains Element        css:section[class=offers-list]      5s

    