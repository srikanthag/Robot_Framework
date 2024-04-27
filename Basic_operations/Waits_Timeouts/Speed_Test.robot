*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${my_email}  srikanth123456789@gmail.com
${my_password}  123456
${url}  https://demowebshop.tricentis.com/
${register}  xpath://a[@class='ico-register']
${male_option}  id:gender-male
${female_option}  id:gender-female
${first_name}  id:FirstName
${user_name1}   Srikanth
${last_name}  id:LastName
${user_name2}   AG
${add_email}  id:Email
${password}  id:Password
${confirm_password}  id:ConfirmPassword
${confirm_register}  id:register-button

*** Test Cases ***
TC:01 Set selenium speed
    [Tags]  Regression
    [Documentation]  Set selenium speed
    ${Speed}    Get Selenium Speed
    Log To Console       ${Speed}
    Open Browser    ${url}    browser=chrome    executable_path=C:/Program Files/Python312/Scripts/chromedriver.exe
    Maximize Browser Window
    Set Selenium Speed      3 seconds
    Click Element   ${register}
    Click Element   ${male_option}
    Click Element  ${first_name}
    Input Text   ${first_name}    ${user_name1}
    Click Element  ${last_name}
    Input Text   ${last_name}    ${user_name2}
    Click Element  ${add_email}
    Input Text   ${add_email}    ${my_email}
    ${Speed}    Get Selenium Speed
    Log To Console       ${Speed}
    [Teardown]  Close Browser



*** Keywords ***