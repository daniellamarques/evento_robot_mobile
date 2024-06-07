*** Settings ***
Documentation   Gerenciamento de casos de teste
Resource        ../TestCases/Forgot_Login.robot
Resource        ../Config/Config.robot

Test Setup      Iniciar Aplicativo
Test Teardown   Fechar Aplicativo

*** Test Cases ***
Recuperar Login
    CT: Recuperar login com sucesso