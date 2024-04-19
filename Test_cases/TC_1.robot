*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.nopcommerce.com/en/login?returnUrl=%2Fen%2Fdemo

*** Test Cases ***
Login test
    open browser   ${url}   ${browser}
    maximize browser window
    login_to_application
    close browser


*** Keywords ***
login_to_application
    input text  id:Username     srikanth@gmail.com
    input text  id:Password     123456
    click element  xpath://input[@class='ico-login']



