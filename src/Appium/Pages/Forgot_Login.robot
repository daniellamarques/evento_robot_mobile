*** Settings ***
Library     AppiumLibrary
Resource    ../Components/Click_Element.robot
Resource    ../Components/Insert_Text.robot
Resource    ../Resources/Forgot_Login.robot


*** Keywords ***
Quando preencher o CNPJ corretamente
    E preencher entrada    ${INPUT_CNPJ}    ${CNPJ}
    E clicar em    RECUPERAR    15s
