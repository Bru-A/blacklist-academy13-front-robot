*** Settings ***
Resource    ../Resources/Centro_Custo.robot

*** Test Cases ***
CT01 - Listagem Centro_Custo
    Abrir Navegador
    Passo 01 - Acessar página login
    Passo 02 - Preencher email
    Passo 03 - Preencher senha
    Passo 04 - Clicar entrar
    Passo 05 - Clicar em Cadastros
    Passo 06 - Clicar CC
    Passo 07 - Clicar proxima pagina
    Passo 08 - Clicar pagina anterior
    Passo 09 - Clicar ultima pagina
    Passo 10 - Clicar primeira pagina