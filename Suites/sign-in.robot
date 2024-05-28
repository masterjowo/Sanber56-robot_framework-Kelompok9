*** Settings ***
# digunakan untuk import file lain
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Test Setup          Open Flight Application
Test Teardown       Close Flight Application

*** Variables ***
# untuk mendefinisikan variabel yang digunakan dalam test case/keyword
${VALID_USERNAME}            support@ngendigital.com
${VALID_PASSWORD}            abc123
${INVALID_USERNAME}          invalidmail@gmail.com
${IVALID_PASSWORD}           test12345

*** Keywords ***
# untuk mendefinisikan keyword

*** Test Cases ***
# untuk menuliskan test case
User Should Be Able To Login With Valid Credential
    # Input username
    # Input password
    # Click login button
    # Verify success login

    [Tags]       TC-001    positive tc signin    quiz3
    # Open Flight Application
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Input Username    username=${VALID_USERNAME}
    Input Password Users    password=${VALID_PASSWORD}
    Click Sign In Button On Login Page
    Verify Success Login
    # Close Flight Application


User Login With Invalid Credential
    # Input invalid username 
    # Input invalid password
    # Click login button
    # Verify failed login 
   
    [Tags]       TC-002    negative tc signin    quiz3
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Input Username    username=${INVALID_USERNAME}
    Input Password Users    password=${INVALID_PASSWORD}
    Click Sign In Button On Login Page
    Notification Failed Login
    # Close Flight Application   