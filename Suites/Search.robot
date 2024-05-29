*** Settings ***
# # https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#test-data-sections
Resource    ../pageObjects/homePageObject/homePage.robot
Resource    ../pageObjects/loginPageObject/loginPage.robot
Resource    ../pageObjects/searchFiligt/SearchFlight.robot
Resource    ../pageObjects/base/base.robot


*** Test Cases ***
Mencari data yang benar
    # https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#test-data-sections
    # Buka Aplikasi
    open aplikasi
    # Verifikasi Home Page Muncul
    Verifikasi Home Page
    # Tekan Tombol Login
    Tekan tombol Sign In
    # Verifikasi Page Login
    Verifikasi Input From Login
    # Mengisi User Name yang Benar
    Input txt Email
    # Mengisi Password yang Benar
    Input txt Password
    # Tekan Tombol Sign In
    Click tombol Sign in
    # Verifikasi User Berhasil Login
    Verivikasi login
    # tekan tombol seaech pada halaman home
    Tekan tombol search
    # Verifikasi User Berhasil masuk ke page search
    Verivikasi search
    # input data yang valid
    Input txt Code valid
    # tombol cari pada page
    Tekan tombol search pada form search
    # menampilkan hasil
    hasil pencarian
    # Tutup aplikasi
    Close Flight Application

Mencari data yang salah
    # https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#test-data-sections
    # Buka Aplikasi
    open aplikasi
    # Verifikasi Home Page Muncul
    Verifikasi Home Page
    # Tekan Tombol Login
    Tekan tombol Sign In
    # Verifikasi Page Login
    Verifikasi Input From Login
    # Mengisi User Name yang Benar
    Input txt Email
    # Mengisi Password yang Benar
    Input txt Password
    # Tekan Tombol Sign In
    Click tombol Sign in
    # Verifikasi User Berhasil Login
    Verivikasi login
    # tekan tombol seaech pada halaman home
    Tekan tombol search
    # Verifikasi User Berhasil masuk ke page search
    Verivikasi search
    # input data yang valid
    Input txt Code tidak valid
    # tombol cari pada page
    Tekan tombol search pada form search
    # menampilkan notivikasi gagal mencari
    Nontifikasi gagal mencari
    # Tutup aplikasi
    Close Flight Application