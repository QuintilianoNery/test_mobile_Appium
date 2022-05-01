*** Settings ***
Resource    ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Variables ***
${seletor_elemento}    id=io.qaninja.android.twp:id/
${ListView}            class=android.widget.ListView

*** Test Case ***
Deve selecionar um perfil QA
    [tags]                         qa
    Go To SingUp Form
    
    Input Text                     ${seletor_elemento}etUsername    Quintiliano
    Element Should Contain Text    ${seletor_elemento}etUsername    Quintiliano    

    Input Text                     ${seletor_elemento}etEmail    q@q.com.br
    Element Should Contain Text    ${seletor_elemento}etEmail    q@q.com.br

    Input Text                     ${seletor_elemento}etPassword    Q123456*
    Element Should Contain Text    ${seletor_elemento}etPassword    Q123456*

    Element Should Contain Text    android:id/text1                 Escolha seu perfil    
    Click Element                  ${seletor_elemento}spinnerJob

    Wait Until Element Is Visible    ${ListView}

    Click Text    QA

    Click Text                  CADASTRAR
    Wait Until Page Contains    Tudo certo, recebemos seus dados!