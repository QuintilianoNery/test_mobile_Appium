*** Settings ***
Resource                  ../resources/base.robot

# Test Setup        - Executa antes de cada teste
Test Setup        Open Session
# Test Teardown     - Executa após cada teste
Test Teardown     Close Session

    
*** Test Cases ***
Dado que estou na tela inicial
    Wait Until Page Contains     Training Wheels Protocol
    Wait Until Page Contains     Mobile Version
    Get Started

Devo acessar a tela Avengers
    Get Started
    Open Nav

    Click Text                          AVENGERS
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Name Should Be              id=io.qaninja.android.twp:id/toolbarTitle    AVENGERS
    Wait Until Page Contains            AVENGERS

Devo acessar a tela Forms
    Get Started
    Open Nav

    Click Text                          FORMS
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Name Should Be              id=io.qaninja.android.twp:id/toolbarTitle    FORMS
    Wait Until Page Contains            FORMS

Devo acessar a tela Dialogs
    Get Started
    Open Nav

    Click Text                          DIALOGS
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Name Should Be              id=io.qaninja.android.twp:id/toolbarTitle    DIALOGS
    Wait Until Page Contains            DIALOGS

Devo acessar a tela Seek Bar
    Get Started
    Open Nav

    Click Text                          SEEK BAR
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Name Should Be              id=io.qaninja.android.twp:id/toolbarTitle    SEEK BAR
    Wait Until Page Contains            SEEK BAR

Devo acessar a tela Inputs
    Get Started
    Open Nav

    Click Text                          INPUTS
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Name Should Be              id=io.qaninja.android.twp:id/toolbarTitle    INPUTS
    Wait Until Page Contains            INPUTS

Devo acessar a tela Botões
    Get Started
    Open Nav

    Click Text                          BOTÕES
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Name Should Be              id=io.qaninja.android.twp:id/toolbarTitle    BOTÕES
    Wait Until Page Contains            BOTÕES