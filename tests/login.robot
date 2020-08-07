***Settings***
Documentation       Suite de teste de login no sistema ServiceNow

Resource    ../resources/base.robot

Test Setup          Open Session
Test Teardown       Close Session

***Variables***
${cpf}      XXX
${senha}    XXX    

***Test Cases***
Entrar no sistema
    Dado quando acesso o endereço "https://www.sodexobeneficios.com.br/index.htm"
    E desejo acessar minha conta como usuário
    Quando submeto o meu CPF "${cpf}" 
    E submeto minha senha "${senha}"
    Então devo ser autenticado

CPF incorreto
    Dado quando acesso o endereço "https://www.sodexobeneficios.com.br/index.htm"
    E desejo acessar minha conta como usuário
    Quando submeto o meu CPF "32568936640" 
    E submeto minha senha "${senha}"
    Então devo ver a mensagem "USUÁRIO E/OU SENHA INVÁLIDOS."

Senha incorreta
    Dado quando acesso o endereço "https://www.sodexobeneficios.com.br/index.htm"
    E desejo acessar minha conta como usuário
    Quando submeto o meu CPF "${cpf}" 
    E submeto minha senha "845sad68702"
    Então devo ver a mensagem "USUÁRIO E/OU SENHA INVÁLIDOS."

Campo CPF e/ou Senha com um espaço em branco
    Dado quando acesso o endereço "https://www.sodexobeneficios.com.br/index.htm"
    E desejo acessar minha conta como usuário
    Quando submeto o meu CPF " " 
    E submeto minha senha " "
    Então devo ver a mensagem "CPF OU E-MAIL DEVE SER INFORMADO"





