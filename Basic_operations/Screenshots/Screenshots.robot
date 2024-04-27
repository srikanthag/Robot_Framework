*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}  https://demowebshop.tricentis.com/

*** Test Cases ***
TC:01 Capture screenshots
    [Tags]  Regression
    [Documentation]  Set selenium speed
    Open Browser    ${url}    browser=chrome    executable_path=C:/Program Files/Python312/Scripts/chromedriver.exe
    Maximize Browser Window
    Sleep   2
    Capture Element Screenshot      xpath:/html/body/div[4]/div[1]/div[1]/div[1]/a/img      C:\Users\hp\Desktop\IT\Testing\Frameworks\Robot_framework\Basic_operations\Screenshots\Element_screenshot.png
    Capture Page Screenshot     C:\Users\hp\Desktop\IT\Testing\Frameworks\Robot_framework\Basic_operations\Screenshots\Page.png

