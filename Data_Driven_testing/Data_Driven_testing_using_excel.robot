*** Settings ***
Library    SeleniumLibrary
Library  DataDriver     ../Data_Driven_testing/credentials.xlsx

Suite Setup   Open browser with URL
Suite Teardown    Close Browser

*** Variables ***
${url}  https://demowebshop.tricentis.com/
${Login}  xpath://a[@class='ico-login']

*** Test Cases ***
TC:001 Data_Driven_testing_using_excel
    [Tags]    Srikanth
    [Documentation]    Data_Driven_testing_using_excel
    Invalid login    ${username}    ${password}



*** Keywords ***
Invalid login
    [Arguments]  ${username}    ${password}
    Login to website using admin credentials
    Error message should be visible

Login to website using admin credentials
    [Documentation]  Login to website using admin credentials
    Click Element  ${Login}
    Sleep    2
    Click Element  id:Email
    Sleep    1
    Input Text   id:Email    ${username}
    Sleep    2
    Click Element  id:Password
    Sleep    1
    Input Text   id:Password    ${password}
    Sleep    2
    Click Element  xpath://input[@class='button-1 login-button']
    Sleep    2

Open browser with URL
    [Documentation]  Open browser with URL
    Open Browser    ${url}    browser=chrome    executable_path=C:/Program Files/Python312/Scripts/chromedriver.exe
    Maximize Browser Window
    Sleep    5