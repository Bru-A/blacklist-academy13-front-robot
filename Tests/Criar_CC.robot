*** Settings ***
Resource    ../Resources/Centro_Custo.robot
Resource    ../Resources/Criar_Centro_Custo.robot
*** Test Cases ***
CT02 - Criacao Centro_Custo Caminho Feliz
    Abrir Navegador
    Passo 01 - Acessar página login
    Passo 02 - Preencher email
    Passo 03 - Preencher senha
    Passo 04 - Clicar entrar
    Passo 05 - Clicar em Cadastros
    Passo 06 - Clicar CC
    Passo 07 - Clicar novo cadastro
    Passo 08 - Digitar novo Centro_Custo
    Passo 09 - Clicar salvar novo
    Passo 10 - Clicar novo cadastro
    Passo 11 - Digitar novo Centro_Custo
    Passo 12 - Clicar salvar novo
    Passo 13 - Validacao de mensagem