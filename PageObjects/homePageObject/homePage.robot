*** Settings ***
Resource        ../base/base.robot
Variables       home-locators.yaml


*** Keywords ***
Verify Home Page Appears
    Wait Until Element Is Visible    ${logo_homePage}

Click Sign In Button On Home Page
    Click Element    ${sign-in-button}

Verifikasi Home Page
    Wait Until Element Is Visible    ${logo_home}

Tekan tombol Sign In
    Wait Until Element Is Visible    ${tombol_Sign_In_home}
    Click Element    ${tombol_Sign_In_home}

Verivikasi login
    Wait Until Element Is Visible    ${verivikasi_login}
