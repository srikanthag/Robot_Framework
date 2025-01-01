*** Settings ***
Library    SeleniumLibrary
Resource    ../POM/Variables/Variables.robot
Resource    ../POM/Variables/Credentials.yml


*** Keywords ***
Open browser with URL
    [Documentation]  Open browser with URL
    Open Browser    ${url}    browser=chrome    executable_path=C:/Program Files/Python312/Scripts/chromedriver.exe
    Maximize Browser Window
    Sleep    5

Select radio button option
    [Documentation]  Select radio button option
    Click Element   ${register}
    Sleep    4
    Click Element   ${male_option}
    Sleep    2

Enter first name
    [Documentation]  Enter first name
    Click Element  ${first_name}
    Sleep    1
    Input Text   ${first_name}    ${user_name1}
    Sleep    1

Enter last name
    [Documentation]  Enter last name
    Click Element  ${last_name}
    Sleep    1
    Input Text   ${last_name}    ${user_name2}
    Sleep    1

Enter email address
    [Documentation]  Enter email address
    Click Element  ${add_email}
    Sleep    1
    Input Text   ${add_email}    ${my_email}
    Sleep    1

Enter password
    [Documentation]  Enter password
    Click Element  ${password}
    Sleep    1
    Input Text   ${password}    ${my_password}
    Sleep    1

Confirm password
    [Documentation]  Confirm password
    Click Element  ${confirm_password}
    Sleep    1
    Input Text   ${confirm_password}    ${my_password}
    Sleep    1