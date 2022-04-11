*** Settings ***

Library     AppiumLibrary


*** Test Cases ***
Dado que estou na tela principal
    Open Application     http://localhost:4723/wd/hub
    ...                  automationName=UiAutomator2
    ...                  deviceName=Android
    ...                  platformName=Android
    ...                  app=${EXECDIR}/App/twp.apk

    Wait Until Page Contains     Training Wheels Protocol     5
    Wait Until Page Contains     Mobile Version
    Close Application