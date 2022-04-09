*** Settings ***
Library    hello.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${resultado}=     Hello Robot     Quintiliano
    Log To Console    ${resultado}
    Should Be Equal    ${resultado}     Olá, Quintiliano!