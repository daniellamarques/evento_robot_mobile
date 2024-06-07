*** Settings ***
Library     AppiumLibrary
Resource    ../Resources/Home.robot


*** Keywords ***

E clicar em
    [Arguments]    ${texto}    ${time}
    Sleep    2s
    Wait Until Page Does Not Contain Element    ${LOADING_IMAGE}    60s
    Wait Until Page Contains    ${texto}    ${time}
    Click Text    ${texto}
    Sleep    2s
E preencher entrada
    [Arguments]    ${input_locator}    ${text_to_input}
    Wait Until Page Does Not Contain Element    ${LOADING_IMAGE}    60s
    Wait Until Element Is Visible    ${input_locator}    timeout=30s
    Clear Text    ${input_locator}
    Input Text    ${input_locator}    ${text_to_input}