***Settings***

Documentation    Keywords referentes ao Bot. Principal

#Base.robot é importado para possibilidar a utilização das configurações principais as configurações herdadas de outrod arquivos
#Possibilitando a criação dos cenários de testes necessários
Resource    ${EXECDIR}/resources/helpers.robot

***Keywords***
#Fluxo conversacional bot principal Blip Shop
    #User Input
Dado que o usuário inicie a conversa com o bot
    Selcionar numero
    Enviar mensagem     Olá    