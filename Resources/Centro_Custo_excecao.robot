*** Settings ***
Library    SeleniumLibrary
Library    String  #verificar letra, num etc
Resource    ../Resources/Centro_Custo.robot
Resource    ../Resources/Criar_Centro_Custo.robot

*** Variables ***


*** Keywords ***
Passo 08 - Digitar novo Centro_Custo em branco
    Wait Until Element Is Visible    locator=${campo_digitarCC}
    Input Text    locator=${campo_digitarCC}    text=
    Sleep    1s

Passo 10 - Validacao mensagem em branco
    Wait Until Page Contains    text=O campo diretoria é obrigatório
    Wait Until Page Contains Element    locator=//p[@class='css-kl4grr']
    Sleep    1s

#Testes Nome com números
Passo 08 - Digitar novo Centro_Custo com numeros
    Wait Until Element Is Visible    locator=${campo_digitarCC}
    Input Text    locator=${campo_digitarCC}    text=12345
    Sleep    1s

Passo 10 - Validacao mensagem com numeros
    Wait Until Page Contains    text=O campo 'centro de custos' só pode conter letras e o caractere especial '&'.
    Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d']
    Sleep    1s
 

 #Testes Nome com caracteres especial
Passo 08 - Digitar novo Centro_Custo com caracteres especial
    Wait Until Element Is Visible    locator=${campo_digitarCC}
    Input Text    locator=${campo_digitarCC}    text=_#!@
    Sleep    1s

Passo 10 - Validacao mensagem com caracteres especial
    Wait Until Page Contains    text=O campo 'centro de custos' só pode conter letras e o caractere especial '&'.
    Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d']
    Sleep    1s

#Teste mais 50 caracteres

Passo 08 - Digitar novo Centro_Custo com mais 50 caracteres
    Wait Until Element Is Visible    locator=${campo_digitarCC}
    Input Text    locator=${campo_digitarCC}    text=aaaaaaaaaaaaaaaaaaaaaaaaaasssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss
    Sleep    1s

Passo 10 - Validacao mensagem com mais de 50 caracteres
    Wait Until Page Contains    text=O campo diretoria pode ter no máximo 50 caracteres
    Wait Until Page Contains Element    locator=//p[@class='css-kl4grr']
    Sleep    1s

#Teste 1 caractere
#
Passo 08 - Digitar novo Centro_Custo com 1 caracter
    Wait Until Element Is Visible    locator=${campo_digitarCC}
    Input Text    locator=${campo_digitarCC}    text=a
    Sleep    1s

Passo 10 - Validacao mensagem com 1 caracter
    Wait Until Page Contains    text=O campo diretoria deve conter no minímo 2 caracteres
    Wait Until Page Contains Element    locator=//p[@class='css-kl4grr']
    Sleep    1s





    
    

