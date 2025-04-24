*** Settings ***
Library    SeleniumLibrary
Library    String  #verificar letra, num etc

*** Variables ***
${url}    https://black-list-front.qacoders.dev.br/login
${email}    sysadmin@qacoders.com
${senha}    1234@Test
${campo_email}    //input[@id='email']
${campo_senha}     //input[@id='password']
${botao_entrar}    //button[normalize-space()='Entrar']
${clicar_cadastro}    //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig']
${clicar_cc}    //span[normalize-space()='Centro de Custo']
${botao_avancarpagina}    //button[3]//*[name()='svg']
${botao_voltarpagina}     //button[@id='backButton']//*[name()='svg']
${botao_ultimapagina}     //button[4]
${botao_primeirapagina}     //button[@id='firstIndexButton']



*** Keywords ***
Abrir Navegador
    Open Browser    browser=headlessChrome    
    Maximize Browser Window

Fechar Navegador
    Close Browser

Passo 01 - Acessar página login
    Go To    url=${url}
Passo 02 - Preencher email
    Wait Until Element Is Visible    locator=${campo_email}
    Input Text    locator=${campo_email}    text=${email}
    Sleep    1s

Passo 03 - Preencher senha
    Wait Until Element Is Visible    locator=${campo_senha}
    Input Password    locator=${campo_senha}    password=${senha}
    Sleep    1s

Passo 04 - Clicar entrar
    Wait Until Element Is Visible    locator=${botao_entrar}
    Click Button    locator=${botao_entrar}
    Sleep    1s
    
Passo 05 - Clicar em Cadastros
    Wait Until Element Is Visible    locator=${clicar_cadastro}
    Click Element    locator=${clicar_cadastro}
    Sleep    1s

Passo 06 - Clicar CC
    Wait Until Element Is Visible    locator=${clicar_cc}
    Click Element    locator=${clicar_cc}
    Sleep    1s

Passo 07 - Clicar proxima pagina
    Wait Until Element Is Visible    locator=${botao_avancarpagina}
    Click Element    locator=${botao_avancarpagina}
    Sleep    1s

Passo 08 - Clicar pagina anterior
    Wait Until Element Is Visible    locator=${botao_voltarpagina}
    Click Element    locator=${botao_voltarpagina}
    Sleep    1s

Passo 09 - Clicar ultima pagina
    Wait Until Element Is Visible    locator=${botao_ultimapagina}
    Click Element    locator=${botao_ultimapagina}
    Sleep    1s

Passo 10 - Clicar primeira pagina
    Wait Until Element Is Visible    locator=${botao_primeirapagina}
    Click Element    locator=${botao_primeirapagina}
    Sleep    1s




    
    

