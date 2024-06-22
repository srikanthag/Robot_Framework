*** Settings ***
Library  DatabaseLibrary
Library  OperatingSystem

Suite Setup       Connect To Database    pymysql    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
Suite Teardown    Disconnect From Database

*** Variables ***
${DBHost}         localhost
${DBName}         mydb
${DBPass}         1234
${DBPort}         3306
${DBUser}         root


*** Test Cases ***
Create person table
    ${output} =    Execute SQL String    CREATE TABLE person (id integer,first_name varchar(20),last_name varchar(20));
    Log    ${output}
    Should Be Equal As Strings    ${output}    None


Insert single data in person table
    ${output} =    Execute SQL String    Insert into person values (101,"Srikanth","AG");
    Log    ${output}
    Should Be Equal As Strings    ${output}    None

Insert multiple data in person table
    ${output} =    Execute SQL Script    ./Database_Testing/Data.sql
    Log    ${output}
    Should Be Equal As Strings    ${output}    None


Check record present in table
    Check If Exists In Database   SELECT id FROM person WHERE first_name = 'Srikanth1';

Check If Not Exists In DB - Rohit
    Check If Not Exists In Database    SELECT id FROM person WHERE first_name = 'Rohit';

Table Must Exist - person
    Table Must Exist    person

Verify Row Count is 0
    Row Count is 0    SELECT * FROM person WHERE first_name = 'NotHere';

Verify Row Count is Equal to X
    Row Count is Equal to X    SELECT id FROM person;    4

Verify Row Count is Less Than X
    Row Count is Less Than X    SELECT id FROM person;    10

Verify Row Count is Greater Than X
    Row Count is Greater Than X    SELECT * FROM person;    1

Update the record in table
    ${output} =    Execute SQL String    Update mydb.person set first_name = 'Srikanth6' where last_name = "AG1";
    Log    ${output}
    Should Be Equal As Strings    ${output}    None


Delete records from table
    ${output} =    Execute SQL String  Delete from mydb.person
    Should Be Equal As Strings    ${output}    None



