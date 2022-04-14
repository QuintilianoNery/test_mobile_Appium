*** Settings ***
Library     AppiumLibrary
Library     robotframework
Library     robotframework-appiumlibrary


*** Test Cases ***
Dado que estou na tela Dialogs
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 deviceName=Redmi_Note_8_Pro
    ...                 platformName=Android
    ...                 app=${EXECDIR}/App/twp.apk

    #Verifica e clica no botão Começar
    Wait Until Page Contains          COMEÇAR                                                                       5
    Click Text                        COMEÇAR
    #Identifica o botão do menu lateral esquerdo
    Wait Until Page Contains Element    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]    5

    #Clica no botão do menu lateral esquerdo
    Click Element                       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    #Verifica o menu lateral esquerdo aberto
    Wait Until Page Contains Element     id=io.qaninja.android.twp:id/navView

    #Clica no menu Dialogs
    Click Text                        DIALOGS
    Wait Until Page Contains Element    id=io.qaninja.android.twp:id/toolbarTitle
    Element Name Should Be              id=io.qaninja.android.twp:id/toolbarTitle    DIALOGS
    Wait Until Page Contains     DIALOGS     5


    Close Application