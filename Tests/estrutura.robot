*** Settings ***
Library     SeleniumLibrary



*** Variables ***
${variavel1}    teste1
${variavel2}    teste2
${variavel3}    teste3


*** Keywords ***
abrir site da Google
    Open Browser    https://www.google.com.br/     chrome

abrir site da Globo
    Open Browser    https://www.globo.com/     chrome

fechar site    
    Close Browser



*** Test Cases ***
Cenário 1: Abrir navegador do Google
    [Tags]  regressivo  
    abrir site da Google
    fechar site


Cenário 2: Abrir navegador do Globo
    abrir site da Globo
    fechar site


