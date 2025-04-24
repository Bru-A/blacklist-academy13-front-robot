*** Settings ***
Library    SeleniumLibrary
Library    String  #verificar letra, num etc

*** Variables ***
${botao_novo_cadastro}    //button[@id='Novo Cadastro']
${campo_digitarCC}    //input[@id='costCentername']
${botao_salvar_novo}    //button[@id='save']



*** Keywords ***


Passo 07 - Clicar novo cadastro
    Wait Until Element Is Visible    locator=${botao_novo_cadastro}
    Click Button    locator=${botao_novo_cadastro}
    Sleep    1s

Passo 08 - Digitar novo Centro_Custo
    ${palavra_randomica}    Generate Random String    length=8    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable       ${FULL_NAME}             S${palavra_randomica}
    Log                     ${FULL_NAME}
    Wait Until Element Is Visible    locator=${campo_digitarCC}
    Input Text    locator=${campo_digitarCC}    text=${FULL_NAME}
    Sleep    1s

Passo 09 - Clicar salvar novo
    Wait Until Element Is Visible    locator=${botao_salvar_novo}
    Click Button   locator=${botao_salvar_novo}
    Sleep    1s

#Validacao de mensagem
Passo 10 - Clicar novo cadastro
    Wait Until Element Is Visible    locator=${botao_novo_cadastro}
    Click Button    locator=${botao_novo_cadastro}
    Sleep    1s

Passo 11 - Digitar novo Centro_Custo
    Wait Until Element Is Visible    locator=${campo_digitarCC}
    Input Text    locator=${campo_digitarCC}    text=Sowbaofph
    Sleep    1s

Passo 12 - Clicar salvar novo
    Wait Until Element Is Visible    locator=${botao_salvar_novo}
    Click Button   locator=${botao_salvar_novo}
    Sleep    1s
Passo 13 - Validacao de mensagem
    Wait Until Page Contains    text=Não é possível salvar esse registro. Centro de custos já cadastrado no sistema.
    Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d']
    Sleep    1s






    
    

