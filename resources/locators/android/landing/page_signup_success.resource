*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../locators/${PLATFORM_NAME}/widgets/widget_page.resource

*** Variables ***
${platform_icon_signup_success}    	        ${APP_PACKAGE}:id/ivSuccess
${platformtxt_signup_success_title}    	    ${APP_PACKAGE}:id/tvCongratulations
${platformtxt_signup_success_message}    	${APP_PACKAGE}:id/tvMessage
${platformbtn_signup_success_open_account}    ${APP_PACKAGE}:id/btnCreateWallet
${platformbtn_signup_success_try_the_app}     ${APP_PACKAGE}:id/tvTryApp