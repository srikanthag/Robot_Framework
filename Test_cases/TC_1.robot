*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${browser}  chrome
${url}  https://demowebshop.tricentis.com/
${Login}  xpath://a[@class='ico-login']

*** Test Cases ***
TC:01 Testing Input Box using admin credentials
    [Tags]  Srikanth
    [Documentation]  Testing Input Box
    [setup]  Open browser with URL
    Login to website using admin credentials
    [Teardown]  Close Browser


*** Keywords ***
Open browser with URL
    [Documentation]  Open browser with URL
    Open Browser    ${url}    browser=chrome    executable_path=D:/IT/Robot_Framework/driver/chromedriver.exe
    Maximize Browser Window
    Sleep    5

Login to website using admin credentials
    [Documentation]  Login to website using admin credentials
    Click Element  ${Login}
    Sleep    2
    Click Element  id:Email
    Sleep    1
    Input Text   id:Email    srikanth@gmail.com
    Sleep    2
    Click Element  id:Password
    Sleep    1
    Input Text   id:Password    1234
    Sleep    2
    Click Element  xpath://input[@class='button-1 login-button']
    Sleep    2
