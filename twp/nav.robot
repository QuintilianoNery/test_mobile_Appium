*** Settings ***

Library     AppiumLibrary


*** Test Cases ***
Dado que estou na tela Dialogs
    Open Application     http://localhost:4723/wd/hub
    ...                  automationName=UiAutomator2
    ...                  deviceName=Android
    ...                  platformName=Android
    ...                  app=${EXECDIR}/App/twp.apk

    #Verifica e clica no botão Começar
    Wait Until Page Contains           COMEÇAR     5
    Click Text                         COMEÇAR
    #Identifica o botão do menu lateral esquerdo
    Wait Until Elements Is Visible     xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]     5

    #Clica no botão do menu lateral esquerdo
    Click Element                      xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    #Verifica o menu lateral esquerdo aberto
    Wait Until Elements Is Visible     id=io.qaninja.android.twp:id/navView

    #Clica no menu Dialogs
    Click Text                           DIALOGS
    Wait Until Elements Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Name Should Be               id=io.qaninja.android.twp:id/toolbarTitle     DIALOGS
    Wait Until Page Contains.Text        DIALOGS     5


    Close Application