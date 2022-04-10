*** Settings ***

Library     AppiumLibrary

# {
#   "appium:automationName": "UiAutomator2",
#   "appium:deviceName": "Android",
#   "platformName": "Android",
#   "appium:app": "C:\\Users\\quint\\OneDrive\\Documentos\\Repositorios\\test_mobile_appium\\twp\\App\\twp.apk",
#   "appium:udid": "emulator-5554"
# }


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