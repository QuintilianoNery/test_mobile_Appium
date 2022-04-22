*** Settings ***
Resource    ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Case ***
Deve selecionar a opção Java
    Abrir Formulario De Radion Buttons

    ${element} =    Set Variable    xpath=//android.widget.RadioButton[contains(@text, 'Java')]

    Click Element                     ${element}
    Wait Until Element Is Visible     ${element}
    Element Attribute Should Match    ${element}    checked    true

Deve selecionar a opção C#
    Abrir Formulario De Radion Buttons

    ${element} =    Set Variable    xpath=//android.widget.RadioButton[contains(@text, 'C#')]

    Click Element                     ${element}
    Wait Until Element Is Visible     ${element}
    Element Attribute Should Match    ${element}    checked    true

Deve selecionar a opção Ruby
    Abrir Formulario De Radion Buttons

    ${element} =    Set Variable    xpath=//android.widget.RadioButton[contains(@text, 'Ruby')]

    Click Element                     ${element}
    Wait Until Element Is Visible     ${element}
    Element Attribute Should Match    ${element}    checked    true

Deve selecionar a opção Python
    Abrir Formulario De Radion Buttons

    ${element} =    Set Variable    xpath=//android.widget.RadioButton[contains(@text, 'Python')]

    Click Element                     ${element}
    Wait Until Element Is Visible     ${element}
    Element Attribute Should Match    ${element}    checked    true

Deve selecionar a opção JavaScript
    Abrir Formulario De Radion Buttons

    ${element} =    Set Variable    xpath=//android.widget.RadioButton[contains(@text, 'JavaScript')]

    Click Element                     ${element}
    Wait Until Element Is Visible     ${element}
    Element Attribute Should Match    ${element}    checked    true    

Deve selecionar a opção Elixir
    Abrir Formulario De Radion Buttons

    ${element} =    Set Variable    xpath=//android.widget.RadioButton[contains(@text, 'Elixir')]

    Click Element                     ${element}
    Wait Until Element Is Visible     ${element}
    Element Attribute Should Match    ${element}    checked    true

Deve selecionar a opção Go Lang
    Abrir Formulario De Radion Buttons

    ${element} =    Set Variable    xpath=//android.widget.RadioButton[contains(@text, 'Go Lang')]

    Click Element                     ${element}
    Wait Until Element Is Visible     ${element}
    Element Attribute Should Match    ${element}    checked    true