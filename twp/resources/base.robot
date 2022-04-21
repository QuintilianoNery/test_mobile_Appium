*** Settings ***
Library           AppiumLibrary

*** Keywords ***
Open Session
    Set Appium Timeout     5
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 deviceName=SM_G980F
    ...                 platformName=Android
    ...                 app=${EXECDIR}/App/twp.apk
    Get Started 

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

Open Session2
    Set Appium Timeout     5
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 deviceName=SM_G980F
    ...                 platformName=Android
    ...                 app=${EXECDIR}/App/twp.apk