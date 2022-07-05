***Settings***
Documentation    Variáveis frequentemente utilizadas no fluxo conversacional do Blip Shop

*** Variables ***

################ Elementos de seleção do contato ################
#Botão lupa localizar contato
${menuitem_search}    id=com.whatsapp:id/menuitem_search
# Campo de pesquisa após clicar na lupa
${search_input}       id=com.whatsapp:id/search_input
#Filtrar o primeiro contato com o número digitado
${filtered_phone}     xpath=(//androidx.recyclerview.widget.RecyclerView[@resource-id='com.whatsapp:id/result_list']/android.widget.RelativeLayout[@resource-id='com.whatsapp:id/contact_row_container']) 
#Campo de digitação da mensagem
${entry}    id=com.whatsapp:id/entry
#Botão enviar
${send}     id=send

################ componentes do Bot ################
#Botões
${opc_menu_promocao}         //android.widget.ImageView[@content-desc="Promoção"][@clickable="true"]
${opc_menu_ver_produtos}     //android.widget.ImageView[@content-desc="Ver produtos"][@clickable="true"]
${opc_menu_duvidas_ajuda}    //android.widget.ImageView[@content-desc="Dúvidas/Ajuda"][@clickable="true"]

#Contem opção Sim e Não que está clicável
${opc_sim}    //android.widget.ImageView[@content-desc="Sim"][@clickable="true"]
${opc_nao}    //android.widget.ImageView[@content-desc="Não"][@clickable="true"]

#Exemplo Catálogo
# ${opc_selecionar_catalogo}      //android.widget.FrameLayout[@content-desc="Botão Selecionar"]/android.widget.TextView[@text="Selecionar"][@displayed="true"]