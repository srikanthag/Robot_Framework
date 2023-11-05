*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://fs2.formsite.com/meherpavan/form2/index.html?1537702596407

*** Test Cases ***
Handling_listbox             #Select multiple elements
    open browser  ${url}    ${browser}
    maximize browser window

    select from list by label    RESULT_RadioButton-9     Afternoon
    unselect from list by label  RESULT_RadioButton-9     Afternoon
    sleep  3
#    select from list by value

    close browser

*** Keywords ***