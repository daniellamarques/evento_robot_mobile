*** Settings ***
Library     AppiumLibrary
Resource    ../Components/Click_Element.robot
Resource    ../Resources/User.robot


*** Keywords ***
E clique em Esqueceu o login
    Click Text    ${INPUT_FORGOT_LOGIN}
