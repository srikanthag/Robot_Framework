*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${url}  https://demowebshop.tricentis.com/


*** Test Cases ***
TC:01 For loop validation
    [Tags]  Regression
    [Documentation]  For loop validation
    FOR     ${i}   IN     1 2 3 4
    Log To Console  ${i}
    END


*** Keywords ***
