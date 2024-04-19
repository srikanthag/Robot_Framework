*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/
${register}  xpath://a[@class='ico-register']

*** Test Cases ***
TC:01 Radio_button_Check_box
    [Tags]  Srikanth
    [Documentation]  Radio_button_Check_box
    [setup]  Open browser with URL
    Select radio button option
    [Teardown]  Close Browser

*** Keywords ***
Open browser with URL
    [Documentation]  Open browser with URL
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5

Select radio button option
    Click Element   ${register}
    Sleep    4
    Click Element   id:gender-male
    Sleep    2