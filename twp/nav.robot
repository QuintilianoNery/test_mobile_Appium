*** Settings ***
Library    AppiumLibrary



*** Test Cases ***
Devo acessar a tela Avengers
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 deviceName=SM_G980F
    ...                 platformName=Android
    ...                 app=${EXECDIR}/App/twp.apk

    #Verifica e clica no botão Começar
    Wait Until Page Contains            COMEÇAR                                                                       5
    Click Text                          COMEÇAR
    #Identifica o botão do menu
    Wait Until Element Is Visible       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]    5
    #Clica no botão do menu
    Click Element                       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    #Verifica menu sendo mostrado
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/navView
    #Clica na opção Avengers
    Click Text                          AVENGERS
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Name Should Be              id=io.qaninja.android.twp:id/toolbarTitle    AVENGERS
    Wait Until Page Contains            AVENGERS                                      5
    Close Application

Devo acessar a tela Forms
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 deviceName=SM_G980F
    ...                 platformName=Android
    ...                 app=${EXECDIR}/App/twp.apk

    #Verifica e clica no botão Começar
    Wait Until Page Contains            COMEÇAR                                                                       5
    Click Text                          COMEÇAR
    #Identifica o botão do menu
    Wait Until Element Is Visible       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]    5
    #Clica no botão do menu
    Click Element                       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    #Verifica menu sendo mostrado
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/navView
    #Clica na opção Forms
    Click Text                          FORMS
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Name Should Be              id=io.qaninja.android.twp:id/toolbarTitle    FORMS
    Wait Until Page Contains            FORMS                                      5
    Close Application

Devo acessar a tela Dialogs
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 deviceName=SM_G980F
    ...                 platformName=Android
    ...                 app=${EXECDIR}/App/twp.apk

    #Verifica e clica no botão Começar
    Wait Until Page Contains            COMEÇAR                                                                       5
    Click Text                          COMEÇAR
    #Identifica o botão do menu
    Wait Until Element Is Visible       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]    5
    #Clica no botão do menu
    Click Element                       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    #Verifica menu sendo mostrado
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/navView
    #Clica na opção Dialogs
    Click Text                          DIALOGS
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Name Should Be              id=io.qaninja.android.twp:id/toolbarTitle    DIALOGS
    Wait Until Page Contains            DIALOGS                                      5
    Close Application