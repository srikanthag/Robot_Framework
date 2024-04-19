*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url1}  https://www.amazon.in/
${url2}     https://demowebshop.tricentis.com/

*** Test Cases ***
close_browser
    open browser  ${url1}   ${browser}
    maximize browser window

    open browser  ${url2}   ${browser}
    maximize browser window

    close all browsers

*** Keywords ***