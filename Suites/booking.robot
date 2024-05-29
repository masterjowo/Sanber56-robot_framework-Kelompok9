*** Settings ***

Resource    ../pageObjects/homePage/homePage.robot
Resource    ../pageObjects/LoginPage/loginPage.robot
Resource    ../pageObjects/base.robot
Resource    ../PageObjects/Booking/booking.robot


*** Variables ***
${VALID_USERNAME}       support@ngendigital.com
${VALID_PASSWORD}       abc123


*** Test Cases ***
Book: Round way - New York - Ottawa - First - Flight and Hotel - Tentative
    Open Flight Application
    Click Sign In Button On Home Page
    Wait Until Element Is Visible    ${username_input}
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Login Button On Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "NGen")]
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Out")]
    Open Book
    Wait Until Element Is Visible    ${one-way-button}
    Book One-way flight only
    Choose Departure New York
    Choose Arrival Ottawa
    Choose Class Bussiness
    Choose Start Date
    Choose End Date
    Choose hotel and flight
    Choose tentative
    Submit booking
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]
    Close Flight Application

Book: One way - Toronto - Paris - Economy - Flight only - Tentative
    Open Flight Application
    Click Sign In Button On Home Page
    Wait Until Element Is Visible    ${username-input}
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Login Button On Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "NGen")]
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Out")]
    Open Book
    Wait Until Element Is Visible    ${one-way-button}
    Book One-way flight only
    Choose Departure Toronto
    Choose Arrival Paris
    Choose Class Economy
    Choose Start Date
    Choose End Date
    Choose flight only
    Choose tentative
    Submit booking
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]
    Close Flight Application

Book: Round way - Chicago - London - Bussiness - Flight and Hotel - Non Tentative
    Open Flight Application
    Click Sign In Button On Home Page
    Wait Until Element Is Visible    ${username-input}
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Login Button On Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "NGen")]
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Out")]
    Open Book
    Wait Until Element Is Visible    ${one-way-button}
    Book One-way flight only
    Choose Departure Chicago
    Choose Arrival London
    Choose Class Bussiness
    Choose Start Date
    Choose End Date
    Choose hotel and flight
    Submit booking
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]
    Close Flight Application
