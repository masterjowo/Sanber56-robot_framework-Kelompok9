*** Settings ***
# digunakan untuk import file lain
Library        AppiumLibrary
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Test Setup          Open Flight Application
Test Teardown       Close Flight Application

*** Variables ***
# untuk mendefinisikan variabel yang digunakan dalam test case/keyword
${VALID_USERNAME}            support@ngendigital.com
${VALID_PASSWORD}            abc123
${INVALID_USERNAME}          support@ngendigital.coms
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

    [Tags]       TC-001    signin    quiz3
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username    username=${VALID_USERNAME}
    Input User Password    password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Success Login