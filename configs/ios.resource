*** Settings ***
Resource    ../configs/default.resource

*** Variables ***
${APPIUM_SERVER_URL}      http://localhost:${APPIUM_PORT}
${PLATFORM_NAME}          ios
${AUTOMATION_NAME}        XCUITest
${DEVICE_NAME}            %{DEVICE_NAME=iPhone 15}
${PLATFORM_VERSION}       %{PLATFORM_VERSION=17.0}
&{BUNDLE_ID}              uat=th.co.cgsec.pi-financial-uat    prod=th.co.cgsec.pi-financial
${APP_BUNDLE_ID}          ${BUNDLE_ID}[${env}]