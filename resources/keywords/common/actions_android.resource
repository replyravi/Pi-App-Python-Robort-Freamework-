*** Settings ***
Library    AppiumLibrary
Resource   ../../../configs/android.resource
Resource   ../../../configs/timeout.resource
Resource   ../../keywords/widgets/widget_page.resource
*** Keywords ***
Open App
    Open Application  ${APPIUM_SERVER_URL}  
    ...    automationName=${AUTOMATION_NAME}  
    ...    platformName=${PLATFORM_NAME}  
    ...    deviceName=${DEVICE_NAME}  
    ...    app=${APP}  
    ...    appPackage=${APP_PACKAGE} 
    ...    appActivity=${APP_ACTIVITY}
    ...    appWaitActivity=${APP_WAIT_ACTIVITY}
    ...    noReset=false
    ...    language=${LANGUAGE}
    ...    locale=${LOCALE}  
    ...    path = '/wd/hub'
    ...    autoGrantPermissions=true  
    ...    newCommandTimeout= ${NEW_COMMAND_TIMEOUT}  
    Wait Until Loading Finished On Page  

Activate App
    Activate Application  ${APP_PACKAGE}
 
Terminate App
    Terminate Application  ${APP_PACKAGE}

Tap Number In Platform Keyboard
    [Documentation]  Using Keycode in Android for 0,1,2,.. - The key's 7,8,9,..
    [Arguments]    ${number}
    ${keycode} =     Evaluate     7+${number}
    AppiumLibrary.Press Keycode    ${keycode}
