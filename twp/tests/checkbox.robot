*** Settings ***
Resource    ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Case ***
Deve a opção Robot Framework
    Abrir Formulario De CheckBox 

    ${element} =    Set Variable    xpath=//android.widget.CheckBox[contains(@text, 'Robot Framework')]

    Click Element                     ${element}
    #erro comum neste ponto
    #StaleElementReferenceException: Message: Cached elements 'By.xpath: //android.widget.CheckBox[contains(@text, 'Robot Framework')]' do not exist in DOM anymore
    #DOM Document Object Model, e o objeto parou de ser mostrado em DOM
    #O problema acontece após o click, pois o elemento foi recarregado para exibir como marcado, com isso o appium não consegue encontrar o elemento
    #Devo pegar o elemento pai anterior no xml e aguardar ele recarregar, até que todo os elementos filhos sejam recarregados
    #Para isso, aguardo até que rvContainer pai do CheckBox, esteja visível e em seguida valido se o elemento CheckBox está marcado true
    Wait Until Element Is Visible     id=io.qaninja.android.twp:id/rvContainer
    Element Attribute Should Match    ${element}    checked    true