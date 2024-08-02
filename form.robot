*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Input_Nome}       id:name
${Input_Email}      id:email
${Input_Tel}        id:number
${Button_Proximo}   //button[@id="next-1"]


*** Keywords ***
abrir navegador e acessar formulário
    Open Browser        https://www.pacotesparaegito.com/personalize?utm_source     chrome

preencher campos
    Input Text      ${Input_Nome}   Jaqueline
    sleep           2s
    Input Text      ${Input_Email}  j@gmail.com
    sleep           2s
    Input Text      ${Input_Tel}    17 991020304
    
clicar em Próximo
    Click button   ${Button_Proximo}

fechar navegador
    Close Browser

*** Test Cases ***
Cenário 1: Preencher formulário
    abrir navegador e acessar formulário
    preencher campos
    clicar em Próximo
    fechar navegador
    