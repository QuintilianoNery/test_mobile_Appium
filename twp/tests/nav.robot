*** Settings ***
Resource                  ../resources/base.robot

# Test Setup        - Executa antes de cada teste
Test Setup        Open Session
# Test Teardown     - Executa após cada teste
Test Teardown     Close Session

*** Variables ***
${TOOLBAR_TITLE}                 id=io.qaninja.android.twp:id/toolbarTitle
    
*** Test Cases ***
Devo acessar a tela Avengers
    Open Nav

    Click Text                          AVENGERS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}
    Element Name Should Be              ${TOOLBAR_TITLE}    AVENGERS
    Wait Until Page Contains            AVENGERS

Devo acessar a tela Forms
    Open Nav

    Click Text                          FORMS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}
    Element Name Should Be              ${TOOLBAR_TITLE}    FORMS
    Wait Until Page Contains            FORMS

Devo acessar a tela Dialogs
    Open Nav

    Click Text                          DIALOGS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}
    Element Name Should Be              ${TOOLBAR_TITLE}    DIALOGS
    Wait Until Page Contains            DIALOGS

Devo acessar a tela Seek Bar
    Open Nav

    Click Text                          SEEK BAR
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}
    Element Name Should Be              ${TOOLBAR_TITLE}    SEEK BAR
    Wait Until Page Contains            SEEK BAR

Devo acessar a tela Inputs
    Open Nav

    Click Text                          INPUTS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}
    Element Name Should Be              ${TOOLBAR_TITLE}    INPUTS
    Wait Until Page Contains            INPUTS

Devo acessar a tela Botões
    Open Nav

    Click Text                          BOTÕES
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}
    Element Name Should Be              ${TOOLBAR_TITLE}    BOTÕES
    Wait Until Page Contains            BOTÕES