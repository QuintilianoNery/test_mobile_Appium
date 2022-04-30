*** Settings ***
Documentation    Aqui teremos as Keywords helpers

*** Variables ***
${START}            COMEÇAR
${HAMBURGER}        xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAV_VIEW}         id=io.qaninja.android.twp:id/navView
${TOOLBAR_TITLE}    id=io.qaninja.android.twp:id/toolbarTitle
${ET_EMAIL}         id=io.qaninja.android.twp:id/etEmail
${ET_PASSWORD}      id=io.qaninja.android.twp:id/etPassword
${BTN_SUBMIT}       id=io.qaninja.android.twp:id/btnSubmit
${TEXT_CLICK}       CLIQUE SIMPLES

*** Keywords ***
Get Started
    #Verifica e clica no botão Começar
    Wait Until Page Contains    ${START}
    Click Text                  ${START}

Open Nav
    #Identifica o botão do menu - Clica no botão do menu - Verifica menu sendo mostrado
    Wait Until Element Is Visible    ${HAMBURGER}
    Click Element                    ${HAMBURGER}
    Wait Until Element Is Visible    ${NAV_VIEW}

Abrir Formulario De Login
    Open Nav
    Click Text                  FORMS
    Wait Until Page Contains    FORMS

    Click Text                  LOGIN
    Wait Until Page Contains    Fala QA, vamos testar o login?

Abrir Formulario De Radion Buttons
    Open Nav
    Click Text                  INPUTS
    Wait Until Page Contains    INPUTS

    Click Text                  BOTÕES DE RADIO
    Wait Until Page Contains    Escolha sua linguagem preferida

Abrir Formulario De CheckBox
    Open Nav
    Click Text                  INPUTS
    Wait Until Page Contains    INPUTS

    Click Text                  CHECKBOX
    Wait Until Page Contains    Marque as techs que usam Appium


Go To Short Click
    Open Nav
    Click Text                  BOTÕES
    Wait Until Page Contains    ${TEXT_CLICK}

    Click Text                  ${TEXT_CLICK}
    Wait Until Page Contains    Botão clique simples