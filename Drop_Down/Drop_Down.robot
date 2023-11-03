*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://fs2.formsite.com/meherpavan/form2/index.html?1537702596407

*** Test Cases ***
Handling_dropdown              #Select only one element
    open browser  ${url}    ${browser}
    maximize browser window
    select from list by index   RESULT_RadioButton-9     0
    sleep  3
    select from list by label    RESULT_RadioButton-9     Afternoon
    sleep  3
#    select from list by value
    close browser

*** Keywords ***