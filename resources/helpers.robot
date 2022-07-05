*** Settings ***
Documentation    Este arquivo serve para centralizar todos os comandos personalizados e Keywords customizaveis que usamos no bot
...              e nele importamos todos os arquivos, tanto em bots próprios ou em projetos de bots compartilhados, com fica centralizado 
...              e não repetido junto a outros arquivos ou código de teste.]

#importação de arquivo com componentes usados nas Keywords personalizadas
Resource    ${EXECDIR}/page_elements/whatsapp/wpp_components_blip_Shop.robot

*** Keywords ***
Iniciar teste
    Set Appium Timeout    12
    Open Application      http://localhost:4723/wd/hub
    ...                   automationName=UiAutomator2
    ...                   deviceName=Android
    ...                   platformName=Android
    ...                   appActivity=com.whatsapp.Main
    ...                   appPackage=com.whatsapp
    ...                   udid=
    ...                   noReset=true

#Keywords para finalizar os testes, realizando uma captura da page para utilizar como evidência do teste e finalizando a aplicação
Finalizar teste
    Capture Page Screenshot    
    Close Application

#Keywords de selecionar número no whatsapp
Selcionar numero
    Wait Until Element Is Visible    ${menuitem_search}
    Click Element                    ${menuitem_search}

    #Telefone de contato para chamar no Whatsapp
    #Netflix Brasil para teste
    Input Text    ${search_input}    11996535902

    Wait Until Element Is Visible    ${filtered_phone}
    Click Element                    ${filtered_phone}    

#Keywords Enviar mensagem utilizada para enviar mensagem em qualquer ponto do teste
Enviar mensagem
    [Arguments]                      ${texto_mensagem}
    Wait Until Element Is Visible    ${entry}             
    Input Text                       ${entry}             ${texto_mensagem}
    Click Element                    ${send}              #btn_enviar

#Keywords Sair do bot utiliza a palavra chave sair para sair de qualquer ponto do fluxo conversacional
Sair
    Enviar mensagem    Sair