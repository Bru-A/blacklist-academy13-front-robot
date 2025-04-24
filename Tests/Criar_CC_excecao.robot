*** Settings ***
Resource    ../Resources/Centro_Custo.robot
Resource    ../Resources/Criar_Centro_Custo.robot
Resource    ../Resources/Centro_Custo_excecao.robot

*** Test Cases ***
CT03 - Criar CC nome em branco
    Abrir Navegador
    Passo 01 - Acessar página login
    Passo 02 - Preencher email
    Passo 03 - Preencher senha
    Passo 04 - Clicar entrar
    Passo 05 - Clicar em Cadastros
    Passo 06 - Clicar CC
    Passo 07 - Clicar novo cadastro
    Passo 08 - Digitar novo Centro_Custo em branco
    Passo 09 - Clicar salvar novo
    Passo 10 - Validacao mensagem em branco

CT04 - Criar CC com numeros
    Abrir Navegador
    Passo 01 - Acessar página login
    Passo 02 - Preencher email
    Passo 03 - Preencher senha
    Passo 04 - Clicar entrar
    Passo 05 - Clicar em Cadastros
    Passo 06 - Clicar CC
    Passo 07 - Clicar novo cadastro
    Passo 08 - Digitar novo Centro_Custo com numeros
    Passo 09 - Clicar salvar novo
    Passo 10 - Validacao mensagem com numeros

CT05 - Criar CC com caractere especial
    Abrir Navegador
    Passo 01 - Acessar página login
    Passo 02 - Preencher email
    Passo 03 - Preencher senha
    Passo 04 - Clicar entrar
    Passo 05 - Clicar em Cadastros
    Passo 06 - Clicar CC
    Passo 07 - Clicar novo cadastro
    Passo 08 - Digitar novo Centro_Custo com caracteres especial
    Passo 09 - Clicar salvar novo
    Passo 10 - Validacao mensagem com caracteres especial

CT06 - Criar CC com mais 50 caracteres
    Abrir Navegador
    Passo 01 - Acessar página login
    Passo 02 - Preencher email
    Passo 03 - Preencher senha
    Passo 04 - Clicar entrar
    Passo 05 - Clicar em Cadastros
    Passo 06 - Clicar CC
    Passo 07 - Clicar novo cadastro
    Passo 08 - Digitar novo Centro_Custo com mais 50 caracteres
    Passo 09 - Clicar salvar novo
    Passo 10 - Validacao mensagem com mais de 50 caracteres

CT07 - Criar CC com 1 caracter
    Abrir Navegador
    Passo 01 - Acessar página login
    Passo 02 - Preencher email
    Passo 03 - Preencher senha
    Passo 04 - Clicar entrar
    Passo 05 - Clicar em Cadastros
    Passo 06 - Clicar CC
    Passo 07 - Clicar novo cadastro
    Passo 08 - Digitar novo Centro_Custo com 1 caracter
    Passo 09 - Clicar salvar novo
    Passo 10 - Validacao mensagem com 1 caracter