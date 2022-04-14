*** Settings ***

Library     AppiumLibrary
Library     robotframework
Library     robotframework-appiumlibrary


*** Test Cases ***
Dado que estou na tela principal
    Open Application     http://localhost:4723/wd/hub
    ...                  automationName=UiAutomator2
    ...                  deviceName=Android
    ...                  platformName=Android
    ...                  app=${EXECDIR}/App/twp.apk

    Wait Until Page Contains     Training Wheels Protocol     5
    Wait Until Page Contains     Mobile Version
    Wait Until Page Contains     COMEÇAR     5
    Click Text                   COMEÇAR
    Capture Page Screenshot     teste.png
    Close Application