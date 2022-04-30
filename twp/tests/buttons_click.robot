*** Settings ***
Resource    ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Case ***
Deve realizar um clique simples
    [tags]               simples
    Go To Short Click

    Click Element               io.qaninja.android.twp:id/short_click
    Wait Until Page Contains    Isso é um clique simples

Deve realizar um clique longo
    [tags]              longo
    Go To Long Click

    Long Press                  io.qaninja.android.twp:id/long_click    1000
    Wait Until Page Contains    CLIQUE LONGO OK