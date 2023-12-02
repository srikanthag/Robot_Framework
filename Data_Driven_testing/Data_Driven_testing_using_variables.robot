*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${URL}            https://example.com
@{VALID_CREDENTIALS}
...    username1    password1
...    username2    password2
# Add more sets of credentials as needed

*** Test Cases ***
Login Test With Multiple Users
    Open Browser To Login Page
    :FOR    ${credentials}    IN    @{VALID_CREDENTIALS}
    \    Input Username And Password    ${credentials[0]}    ${credentials[1]}
    \    Submit Login
    \    Validate Successful Login

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Go To    ${URL}

Input Username And Password
    [Arguments]    ${username}    ${password}
    Input Text    username_field    ${username}
    Input Text    password_field    ${password}

Submit Login
    Click Button    login_button

Validate Successful Login
    Page Should Contain    Welcome Message
