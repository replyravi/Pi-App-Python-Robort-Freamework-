*** Settings ***
Resource    ../configs/default.resource

*** Variables ***
${APPIUM_SERVER_URL}      http://localhost:${APPIUM_PORT}
${PLATFORM_NAME}          Android
${AUTOMATION_NAME}        UiAutomator2
${APP_ACTIVITY}           com.cgs.trade.MainSplashActivity
${APP_WAIT_ACTIVITY}      financial.pi.login.Pi21KLoginActivity
${DEVICE_NAME}            %{DEVICE_NAME=emulator-5554}
&{PACKAGE}                uat=com.cgs.trade    prod=th.co.pi.financial
${APP_PACKAGE}            ${PACKAGE}[${env}]

