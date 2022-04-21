*** Settings ***
Documentation    Aqui teremos as Keywords helpers

*** Variables ***
${START}        COMEÇAR
${HAMBURGER}    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAV_VIEW}     id=io.qaninja.android.twp:id/navView

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