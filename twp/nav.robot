*** Settings ***
Library           AppiumLibrary

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

*** Keywords ***
Open Session
    Set Appium Timeout     5
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 deviceName=SM_G980F
    ...                 platformName=Android
    ...                 app=${EXECDIR}/App/twp.apk

Close Session
    Capture Page Screenshot
    Close Application

Get Started
    #Verifica e clica no botão Começar
    Wait Until Page Contains            COMEÇAR
    Click Text                          COMEÇAR

Open Nav
    #Identifica o botão do menu - Clica no botão do menu - Verifica menu sendo mostrado
    Wait Until Element Is Visible       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Click Element                       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/navView