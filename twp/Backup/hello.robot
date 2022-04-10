*** Settings ***
Library    hello.py

*** Test Cases ***
Dado que retorne a mensagem de boas vindas
    ${resultado}=     Hello Robot     Quintiliano
    Log To Console    ${resultado}
    Should Be Equal    ${resultado}     Olá, Quintiliano!