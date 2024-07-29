*** Settings ***
Library    AppiumLibrary
Resource   ../../../configs/ios.resource
Resource   ../../keywords/widgets/widget_page.resource
*** Variables ***
${key_number_byvalue}             xpath=//XCUIElementTypeKey[@name="${VALUE_NUMBER}"]
*** Keywords ***
Open App
    Open Application  ${APPIUM_SERVER_URL}  
    ...    automationName=${AUTOMATION_NAME}  
    ...    platformName=${PLATFORM_NAME}  
    ...    deviceName=${DEVICE_NAME}  
    ...    app=${APP}  
    ...    bundleID=${APP_BUNDLE_ID}
    ...    language=${LANGUAGE}
    ...    locale=${LOCALE}
    ...    noReset=false
    ...    autoGrantPermissions=true
    ...    newCommandTimeout= ${NEW_COMMAND_TIMEOUT}
    Wait Until Loading Finished On Page  

Activate App 
    Activate Application  ${APP_BUNDLE_ID}

Terminate App
    Terminate Application  ${APP_BUNDLE_ID}

Tap Number In Platform Keyboard
    [Arguments]    ${number}
    ${locator} =  Replace String    string=${key_number_byvalue}    search_for=${VALUE_NUMBER}    replace_with=${number}
    AppiumLibrary.Click Element    ${locator}
