*** Settings ***

Library  AppiumLibrary

*** Variables ***
${btn_entrar}    xpath=//*[@resource-id="com.qaxperience.yodapp:id/btnSubmit"]        #id=com.qaxperience.yodapp:id/btnSubmit

*** Keywords ***
Do login
    [Arguments]  ${LOGIN}  ${PASSWORD}
    Input Text        id=com.qaxperience.yodapp:id/etEmail       ${LOGIN}
    Input Password    id=com.qaxperience.yodapp:id/etPassword    ${PASSWORD}
    Click Element     ${btn_entrar}