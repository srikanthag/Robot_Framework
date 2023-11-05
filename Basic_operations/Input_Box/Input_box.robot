*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.nopcommerce.com/en/login?returnUrl=%2Fen%2Fdemo

*** Test Cases ***
Testing_input_box
    open browser  ${url}    ${browser}
    maximize browser window
    ${"Username"}   set variable  id:Username

    element should be visible   ${"Username"}
    element should be enabled   ${"Username"}

    input text  ${"Username"}   srikanth@123.com
    sleep  5

    clear element text  ${"Username"}
    sleep  3

    close browser


*** Keywords ***