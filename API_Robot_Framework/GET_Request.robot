*** Settings ***
Library     RequestsLibrary


*** Variables ***
${base_url}     https://dummy.restapiexample.com
${employee}     1

*** Test Cases ***
Get Request Test
      Create Session    mysession     ${baseurl}


*** Keywords ***





















