*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../../configs/android.resource

*** Variables ***
${platform_txt_login_verify_mobile_title}        //*[@text="${VALUE_CONTENT}"]
${platform_btn_login_verify_mobile_code_sent}    ${APP_PACKAGE}:id/btnVerifyCodeSent
${platform_input_login_verify_mobile_value}        ${APP_PACKAGE}:id/tvMobilePhone
${platform_input_login_verify_mobile_otp}        ${APP_PACKAGE}:id/et_otp
${platform_linktxt_login_verify_mobile_resend_code}  ${APP_PACKAGE}:id/tvVerificationSuccess	
${platform_txt_login_verify_mobile_expired}      ${APP_PACKAGE}:id/tvCountdown
${platform_btn_login_verify_mobile_continue}     ${APP_PACKAGE}:id/btnContinue
