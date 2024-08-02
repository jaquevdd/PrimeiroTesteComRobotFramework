*** Settings ***
Library     SeleniumLibrary


*** Variables ***
#Dados do meu caso de teste
${Musica}   ana vilela trem bala


#Variáveis de configuração
${URL}  https://www.youtube.com/
${Browser}  chrome


#Elementos
${Input_Pesquisa}   //input[@id="search"]
${Button_Pesquisa}  //button[@id="search-icon-legacy"]
${Primeiro_Video}   (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${Video_Exibido}    (//yt-touch-feedback-shape[@style="border-radius: inherit;"])[1]

*** Keywords ***

Dado que eu acesso o site do Youtube
    Open Browser  ${URL}   ${Browser}

Quando digito o nome da música 
    Input Text  ${Input_Pesquisa}   ${Musica}

E clico no botão Pesquisar
    Click Element  ${Button_Pesquisa}
    
E clico no primeiro clique encontrato       
    Wait Until Element Is Visible   ${Primeiro_Video}   10
    Click Element  ${Primeiro_Video}
    
Então o vídeo é exibido
    Wait Until Element Is Visible   ${Video_Exibido}    60
    Element Should Be Visible  ${Video_Exibido}     
    Close Browser


*** Test Cases ***
Cenário 1: Executar vídeo no site do Youtybe
    [Tags]  regressivo  
    Dado que eu acesso o site do Youtube
    Quando digito o nome da música 
    E clico no botão Pesquisar
    E clico no primeiro clique encontrato
    Então o vídeo é exibido
