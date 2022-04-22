*** Settings ***
Resource    ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Case ***
Deve logar com sucesso
    Abrir Formulario De Login

    Input Text       ${ET_EMAIL}       eu@papito.io
    Input Text       ${ET_PASSWORD}    qaninja
    Click Element    ${BTN_SUBMIT}

    Wait Until Page Contains    Show! Suas credenciais são validas.

Deve mostrar senha inválida
    Abrir Formulario De Login

    Input Text       ${ET_EMAIL}       eu@papito.io
    Input Text       ${ET_PASSWORD}    senhaTeste123
    Click Element    ${BTN_SUBMIT}

    Wait Until Page Contains    Senha inválida!