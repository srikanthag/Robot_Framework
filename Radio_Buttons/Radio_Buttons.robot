*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/

*** Test Cases ***
Radio_button_Check_box
    open browser  ${url}    ${browser}
    maximize browser window

    select radio button    id:pollanswers-3

*** Keywords ***


