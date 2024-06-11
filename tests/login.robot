*** Settings ***

Resource    ../resources/base.resource

*** Test Cases ***
Deve logar com sucesso
    [Tags]    LoginSucess
    Start session

    Get started
    Navigate to    Formulários
    Go to item     Login    Olá Padawan, vamos testar o login?

    Input Text        id=com.qaxperience.yodapp:id/etEmail       yoda@qax.com
    Input Password    id=com.qaxperience.yodapp:id/etPassword    jedi
    Click Element     id=com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains    Boas vindas, logado você está.

    Close session

Não deve logar com senha incorreta
    [Tags]    passError
    Start session

    Get started
    Navigate to    Formulários
    Go to item     Login    Olá Padawan, vamos testar o login?

    Input Text        id=com.qaxperience.yodapp:id/etEmail       yoda@qax.com
    Input Password    id=com.qaxperience.yodapp:id/etPassword    sith
    Click Element     id=com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains    Oops! Credenciais incorretas.

    Close session

Não deve logar com login incorreto
    [Tags]    loginError
    Start session

    Get started
    Navigate to    Formulários
    Go to item     Login    Olá Padawan, vamos testar o login?

    Input Text        id=com.qaxperience.yodapp:id/etEmail       papatino@qax.com
    Input Password    id=com.qaxperience.yodapp:id/etPassword    jedi
    Click Element     id=com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains    Oops! Credenciais incorretas.

    Close session