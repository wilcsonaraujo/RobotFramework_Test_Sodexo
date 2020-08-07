***Settings***
Documentation   Suite de testes relacionado a busca de discontos no club Sodexo.

Resource    ../resources/base.robot
Resource    ../resources/kws.robot

Test Setup          Open Session
Test Teardown       Close Session

***Variables***
${cpf}      XXX
${senha}    XXX  

***Test Cases***
Visualizar restaurante com desconto
    Dado quando estou logado e na pagina inicial do sodexo club "https://www.sodexobeneficios.com.br/sodexo-club/"
    Quando desejo visualizar todas as promoções 
    E submeto meu estado "MG"
    cidade "Belo Horizonte"
    bairro "Castelo"
    Então devo visualizar os restaurantes com promoção para usuários do Sodexo