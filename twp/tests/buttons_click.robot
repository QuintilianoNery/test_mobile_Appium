*** Settings ***
Resource    ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Case ***
Deve realizar um click simples
    Go To Short Click

    Click Element    io.qaninja.android.twp:id/short_click
    Wait Until Page Contains         Isso é um clique simples