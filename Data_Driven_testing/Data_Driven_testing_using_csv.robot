*** Settings ***
Library    SeleniumLibrary
Library    CSVLibrary

*** Variables ***
${BROWSER}           Chrome
${URL}               https://example.com
${CREDENTIALS_FILE}  C:\Users\hp\Desktop\IT\Testing\Frameworks\Robot_framework\Data_Driven_testing\credentials.csv

*** Test Cases ***
Login Test With CSV Data
    [Documentation]    Perform login using credentials from CSV file
    Open Browser To Login Page
    ${credentials}    Read CSV File    ${CREDENTIALS_FILE}
    :FOR    ${row}    IN    @{credentials}
    \    Input Username And Password    ${row.Username}    ${row.Password}
    \    Submit Login
    \    Validate Successful Login

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Go To    ${URL}

Input Username And Password
    [Arguments]    ${username}    ${password}
    Input Text    username_field    ${username}
    Input Text    password_field    ${password}

Submit Login
    Click Button    login_button

Validate Successful Login
    Page Should Contain    Welcome Message


#Explanation:

# 1. CSVLibrary is imported to work with CSV files.
# 2. ${CREDENTIALS_FILE} holds the path to your CSV file.
# 3. Login Test With CSV Data test case reads data from the CSV file and iterates through each row to perform login with different sets of credentials.
# 4. Within the loop, it inputs the username and password, submits the login form, and validates a successful login.
# 5. Adjust the script by replacing ${BROWSER}, ${URL}, field locators (username_field, password_field, login_button), and assertions with your actual test details.
# 6. This approach allows you to maintain your test data separately in CSV files and easily expand or modify the test data without modifying the test case logic.
