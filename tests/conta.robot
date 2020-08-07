***Settings***
Documentation   Suite de teste relacionado a conta de usuário

Resource    ../resources/base.robot
Resource    ../resources/kws.robot

Test Setup          Open Session
Test Teardown       Close Session

***Variables***
${cpf}      XXX
${senha}    XXX    

***Test Cases***
Visualizar Saldo
    Dado quando acesso meus cartões no endereço "https://www.sodexobeneficios.com.br/sodexo-club/meu-painel/meus-cartoes/saldo-e-extrato/"
    Quando submeto o meu CPF "${cpf}" 
    E submeto minha senha "${senha} "
    Então devo escolher meu cartão "REFEIÇÃO PASS (FINAL 4013)"
    E quando realizar a consulta devo vizualizar meu saldo

Visualizar Ultima Compra
    Dado quando acesso meus cartões no endereço "https://www.sodexobeneficios.com.br/sodexo-club/meu-painel/meus-cartoes/saldo-e-extrato/"
    Quando submeto o meu CPF "${cpf}" 
    E submeto minha senha "${senha} "
    Então devo escolher meu cartão "REFEIÇÃO PASS (FINAL 4013)"
    E ao consultar devo vizualizar minhas últimas compras nos últimos trinta dias