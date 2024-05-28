*** Settings ***
Documentation        All about login page
Resource             ../base.robot
Resource             ../HomePage/homePage.robot
Variables            login-locators.yaml

*** Keywords ***
Input Username
    [Arguments]                      ${username}
    Wait Until Element Is Visible    locator=${username_input}
    Input Text                       locator=${username_input}         text=${username}

Input Password Users
    [Arguments]                      ${password}
    Input Text                       locator=${password_input}         text=${password}

Click Sign In Button On Login Screen
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Login With Valid Credential
    [Arguments]                ${username}   ${password}
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Input Username        username=${username}
    Input Password Users    password=${password}
    Click Sign In Button On Login Page

Notification Failed Login
    Wait Until Page Contains               Invalid username/password