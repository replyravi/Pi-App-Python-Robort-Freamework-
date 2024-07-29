*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../locators/${PLATFORM_NAME}/widgets/widget_page.resource
Resource    ../../../locators/${PLATFORM_NAME}/widgets/widget_modal.resource
*** Variables ***
${platform_txt_signup_verify_otp_time}               ${APP_PACKAGE}:id/tvOTPTime
${platform_input_signup_verify_otp}                  ${APP_PACKAGE}:id/et_otp
${platform_linktxt_signup_verify_otp_resend}         ${APP_PACKAGE}:id/layoutResend
${platform_txt_signup_verify_otp_resend}             xpath=//*[@resource-id="${APP_PACKAGE}:id/layoutResend"]/android.widget.TextView
${platform_txt_signup_verify_otp_title}              xpath=//*[@resource-id="${platform_txt_page_title}" and @text="${VALUE_CONTENT}"]
${platform_txt_signup_verify_otp_mobile_subtitle}    ${platform_txt_page_subtitle}
${platform_txt_signup_verify_otp_email_subtitle}     ${platform_txt_page_subtitle}
${platform_txt_signup_verify_otp_incorrect}          ${platform_txt_page_error}
${platform_txt_signup_verify_otp_expired}            ${platform_txt_page_error}
${platform_txt_signup_verify_otp_reached_limit}      ${platform_txt_page_error}
