*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/

*** Test Cases ***
Tc:01 Handling_dropdown
    [Setup]  Open browser with URL
    Select options from dropdown using Label, Index and Value
    [Teardown]  Close Browser


*** Keywords ***
Open browser with URL
    [Documentation]  Open browser with URL
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5

Select options from dropdown using Label, Index and Value
    [Documentation]  Select options from dropdown using Label, Index and Value
    Click Element   (//a[@href='/books'])[1]
    sleep  3
    Select From List By Label   products-orderby     Name: A to Z
    sleep  3
    Select From List By Index   products-orderby     3
    sleep  3
    Select From List By Value   products-orderby     https://demowebshop.tricentis.com/books?orderby=15
    sleep  3