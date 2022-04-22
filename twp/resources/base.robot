*** Settings ***
Library     AppiumLibrary
Resource    helpers.robot

*** Keywords ***
Open Session
    Set Appium Timeout    7
    Open Application      http://localhost:4723/wd/hub
    ...                   automationName=UiAutomator2
    ...                   deviceName=SM_G980F
    ...                   platformName=Android
    ...                   app=${EXECDIR}/App/twp.apk
    Get Started 

#Usados especificamente para o teste tela inicial, pois não pode acessar get started
Open Session2
    Set Appium Timeout    7
    Open Application      http://localhost:4723/wd/hub
    ...                   automationName=UiAutomator2
    ...                   deviceName=SM_G980F
    ...                   platformName=Android
    ...                   app=${EXECDIR}/App/twp.apk

Close Session
    Close Application