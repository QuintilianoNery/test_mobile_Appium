*** Settings ***
Resource                  ../resources/base.robot

# Test Setup        - Executa antes de cada teste
Test Setup        Open Session2
# Test Teardown     - Executa após cada teste
Test Teardown     Close Session

*** Variables ***
    
*** Test Cases ***
Dado que estou na tela inicial
    Wait Until Page Contains     Training Wheels Protocol
    Wait Until Page Contains     Mobile Version