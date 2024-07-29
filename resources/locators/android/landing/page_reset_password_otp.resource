*** Settings ***
Resource    ../../../../configs/android.resource
Resource    ../../../locators/${PLATFORM_NAME}/widgets/widget_page.resource

*** Variables ***
${platform_txt_reset_password_otp_title}         ${platform_txt_page_title}
${platform_txt_reset_password_otp_email_title}   ${APP_PACKAGE}:id/tv_email_title
${platform_input_reset_password_otp_email}       ${APP_PACKAGE}:id/et_email     
${platform_btn_reset_password_otp_email_resetcode}    ${APP_PACKAGE}:id/verify_email_button
${platform_txt_reset_password_otp_phone_title}        ${APP_PACKAGE}:id/tv_phone_title
${platform_input_reset_password_otp_phone}            ${APP_PACKAGE}:id/et_phone 
${platform_btn_reset_password_otp_phone_resetcode}    ${APP_PACKAGE}:id/verify_phone_button
${platform_input_reset_password_otp}             ${APP_PACKAGE}:id/et_otp
${platform_txt_reset_password_otp_inputtitle}    ${APP_PACKAGE}:id/otp_input_title
${platform_btn_reset_password_otp_resend}        ${APP_PACKAGE}:id/otp_resend_button
${platform_txt_reset_password_otp_timer}         ${APP_PACKAGE}:id/otp_timer_title
${platform_btn_reset_password_otp_continue}      xpath=//*[contains(@resource-id, "continue_button")]
${platform_txt_reset_password_otp_tryagain}      ${APP_PACKAGE}:id/otp_try_again_button


