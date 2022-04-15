*** Settings ***
Library    AppiumLibrary
    
*** Test Cases ***
Devo acessar a tela Avengers
    Open Session
    #Verifica e clica no botão Começar
    Wait Until Page Contains            COMEÇAR
    Click Text                          COMEÇAR
    #Identifica o botão do menu
    Wait Until Element Is Visible       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    #Clica no botão do menu
    Click Element                       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    #Verifica menu sendo mostrado
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/navView
    #Clica na opção Avengers
    Click Text                          AVENGERS
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Name Should Be              id=io.qaninja.android.twp:id/toolbarTitle    AVENGERS
    Wait Until Page Contains            AVENGERS
    Close Session

Devo acessar a tela Forms
    Open Session
    #Verifica e clica no botão Começar
    Wait Until Page Contains            COMEÇAR
    Click Text                          COMEÇAR
    #Identifica o botão do menu
    Wait Until Element Is Visible       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    #Clica no botão do menu
    Click Element                       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    #Verifica menu sendo mostrado
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/navView
    #Clica na opção Forms
    Click Text                          FORMS
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Name Should Be              id=io.qaninja.android.twp:id/toolbarTitle    FORMS
    Wait Until Page Contains            FORMS
    Close Session

Devo acessar a tela Dialogs
    Open Session
    #Verifica e clica no botão Começar
    Wait Until Page Contains            COMEÇAR
    Click Text                          COMEÇAR
    #Identifica o botão do menu
    Wait Until Element Is Visible       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    #Clica no botão do menu
    Click Element                       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    #Verifica menu sendo mostrado
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/navView
    #Clica na opção Dialogs
    Click Text                          DIALOGS
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Name Should Be              id=io.qaninja.android.twp:id/toolbarTitle    DIALOGS
    Wait Until Page Contains            DIALOGS
    Close Session

Devo acessar a tela Seek Bar
    Open Session
    #Verifica e clica no botão Começar
    Wait Until Page Contains            COMEÇAR
    Click Text                          COMEÇAR
    #Identifica o botão do menu
    Wait Until Element Is Visible       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    #Clica no botão do menu
    Click Element                       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    #Verifica menu sendo mostrado
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/navView
    #Clica na opção Seek Bar
    Click Text                          SEEK BAR
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Name Should Be              id=io.qaninja.android.twp:id/toolbarTitle    SEEK BAR
    Wait Until Page Contains            SEEK BAR
    Close Session

Devo acessar a tela Inputs
    Open Session
    #Verifica e clica no botão Começar
    Wait Until Page Contains            COMEÇAR
    Click Text                          COMEÇAR
    #Identifica o botão do menu
    Wait Until Element Is Visible       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    #Clica no botão do menu
    Click Element                       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    #Verifica menu sendo mostrado
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/navView
    #Clica na opção Inputs
    Click Text                          INPUTS
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Name Should Be              id=io.qaninja.android.twp:id/toolbarTitle    INPUTS
    Wait Until Page Contains            INPUTS
    Close Session 

Devo acessar a tela Botões
    Open Session
    #Verifica e clica no botão Começar
    Wait Until Page Contains            COMEÇAR
    Click Text                          COMEÇAR
    #Identifica o botão do menu
    Wait Until Element Is Visible       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    #Clica no botão do menu
    Click Element                       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    #Verifica menu sendo mostrado
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/navView
    #Clica na opção Botões
    Click Text                          BOTÕES
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Name Should Be              id=io.qaninja.android.twp:id/toolbarTitle    BOTÕES
    Wait Until Page Contains            BOTÕES
    Close Session 

*** Keywords ***
Open Session
    Set Appium Timeout     5
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 deviceName=SM_G980F
    ...                 platformName=Android
    ...                 app=${EXECDIR}/App/twp.apk

Close Session
    Close Application    