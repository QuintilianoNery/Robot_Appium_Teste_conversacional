*** Settings ***
Documentation    Neste arquivo é utilizado para centralizar todos os outros que tem alguma importação
...              com isso, apenas importamos este arquivo no arquivo de teste e tudo fica centralizado em um só lugar.

Library    AppiumLibrary

Resource    ${EXECDIR}/page_elements/conversation/botconversation.robot
Resource    ${EXECDIR}/page_elements/whatsapp/wpp_components_blip_Shop.robot

Resource    keywords.robot
Resource    helpers.robot