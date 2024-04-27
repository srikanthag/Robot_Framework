*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${url}  https://demowebshop.tricentis.com/


*** Test Cases ***
TC:01 Scroll page
    [Tags]  Regression
    [Documentation]  Scroll page
    Open Browser    ${url}    browser=chrome    executable_path=C:/Program Files/Python312/Scripts/chromedriver.exe
    Maximize Browser Window
    Set Selenium Speed      3 seconds
    Execute Javascript      window.scrollTo(0,2500)
    [Teardown]  Close Browser
