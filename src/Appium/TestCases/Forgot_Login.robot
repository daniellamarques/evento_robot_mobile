*** Settings ***
Documentation       Validação automatizada da feature de recuperação de login

Resource            ../Pages/Home.robot
Resource            ../Pages/User.robot
Resource            ../Pages/Forgot_Login.robot
Resource            ../Components/Insert_Text.robot


*** Keywords ***
CT: Recuperar login com sucesso
    Dado que o usuário esteja na home
    E clicar em    ENTRAR    15s
    E clicar em    Esqueceu o login?    15s
    Quando preencher o CNPJ corretamente  
    Então na tela exibir    Seu login foi enviado para o email:
    