*** Settings ***
Library  AppiumLibrary
Resource  ../Resources/Home.robot

*** Keywords ***

Dado que o usuário esteja na home
    Wait Until Element Is Visible   //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]

Então na tela exibir
    [Arguments]    ${text}
    Wait Until Page Contains    ${text}    15s