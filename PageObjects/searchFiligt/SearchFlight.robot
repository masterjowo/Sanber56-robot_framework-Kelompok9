*** Settings ***
Resource        ../base/base.robot
Variables       Search_Flight.yml


*** Variables ***
${Valid_code}           DA935
${Tidak_Valid_code}     abc123


*** Keywords ***
Tekan tombol search
    Click Element    ${tombol_search}

Verivikasi search
    Wait Until Element Is Visible    ${verivikasi_search}

Input txt Code valid
    [Arguments]    ${code}=${Valid_code}
    Input Text    ${form_input}    ${code}

Input txt Code tidak valid
    [Arguments]    ${code_salah}=${Tidak_Valid_code}
    Input Text    ${form_input}    ${code_salah}

Tekan tombol search pada form search
    Click Element    ${tombol_cari_pada_search}

hasil pencarian
    Wait Until Element Is Visible    ${menamilkan_data_yang_dicari}

Nontifikasi gagal mencari
    Wait Until Page Contains    Please enter valid Flight Number    30 seconds
