*** Settings ***

Resource    ../resources/base.resource


*** Test Cases ***
Deve logar com sucesso
    [Tags]    LoginSucess
    Start session

    Get started
    Navigate to    Formulários
    Go to item     Login    Olá Padawan, vamos testar o login?
   
    Do login    LOGIN=yoda@qax.com    PASSWORD=jedi
    Wait Until Page Contains    Boas vindas, logado você está.

    Close session

Não deve logar com senha incorreta
    [Tags]    passError
    Start session

    Get started
    Navigate to    Formulários
    Go to item     Login    Olá Padawan, vamos testar o login?

    Do login    LOGIN=yoda@qax.com    PASSWORD=sith

    Wait Until Page Contains    Oops! Credenciais incorretas.

    Close session

Não deve logar com login incorreto
    [Tags]    loginError
    Start session

    Get started
    Navigate to    Formulários
    Go to item     Login    Olá Padawan, vamos testar o login?

    Do login    LOGIN=papatino@qax.com    PASSWORD=jedi

    Wait Until Page Contains    Oops! Credenciais incorretas.

    Close session