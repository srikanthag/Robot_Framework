*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.sugarcrm.com/au/request-demo/

*** Test Cases ***
Radio_button_Check_box
    open browser  ${url}    ${browser}
    maximize browser window
    select checkbox     id:interest_market_c0
    unselect checkbox  id:interest_market_c0

*** Keywords ***
