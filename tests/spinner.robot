*** Settings ***

Resource     ../resources/base.resource

*** Test Cases ***
Deve escolher o nivel Padawan
    [Tags]    Padawan

    Start session
    Get started

    Navigate to    Formulários
    Go to item     Cadastro    Crie sua conta.

    Select level    Padawan

    Close session

Deve escolher o nivel Jedi

    Start session
    Get started

    Navigate to    Formulários
    Go to item     Cadastro    Crie sua conta.

    Select level    Jedi

    Close session

Deve escolher o nivel Sith

    Start session
    Get started

    Navigate to    Formulários
    Go to item     Cadastro    Crie sua conta.

    Select level    Sith

    Close session

Deve escolher o nivel Outros

    Start session
    Get started

    Navigate to    Formulários
    Go to item     Cadastro    Crie sua conta.

    Select level    Outros

    Close session

*** Keywords ***
Select level
    [Arguments]    ${level}
    Click Element                    id=com.qaxperience.yodapp:id/spinnerJob
    Wait Until Element Is Visible    class=android.widget.ListView
    Click Text                       ${level}