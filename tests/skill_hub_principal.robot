*** Settings ***
Documentation    Arquivo de teste usando apenas uma importação da base.robot, onde todas as funcionalidades passam centralizadas
Resource         ${EXECDIR}/resources/base.robot

# Antes de iniciar os testes cases, passa-se o que se executa no inicio dos testes que é a chamada do bot no whatsapp
# Ao final do teste, executa a captura da tela e finaliza o serviço
Test Setup       Iniciar teste
Test Teardown    Finalizar teste

***Test Cases***
Titulo do teste
    [Documentation]                                   Documentação específica do teste que itá aparecer no relatório
    [tags]                                            tag
    Dado que o usuário inicie a conversa com o bot
    Sair