*** Settings *** 
Library     AppiumLibrary


*** Variables *** 
${REMOTE_URL}           http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     12.0
${DEVICE_NAME}          emulator-5554
${APP_PACKAGE}          com.example.myapplication
${APP_ACTIVITY}         com.example.myapplication.MainActivity


*** Keywords **** 
open aplikasi
    Open Application    remote_url=${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    # Open Application https://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html#Open%20Application

Close Flight Application
    Close Application