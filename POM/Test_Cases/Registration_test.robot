*** Settings ***
Library    SeleniumLibrary
Resource    ../POM/Resources/Resources.robot

*** Test Cases ***
TC:001 Register user
    [Tags]  Regression
    Open browser with URL
    Select radio button option
    Enter first name
    Enter last name
    Enter email address
    Enter password
    Confirm password
    Sleep    1
    Click Element  ${confirm_register}
    Sleep    3
    Close Browser










