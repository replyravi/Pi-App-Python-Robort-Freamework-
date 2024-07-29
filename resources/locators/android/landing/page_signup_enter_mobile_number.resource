*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../locators/${PLATFORM_NAME}/widgets/widget_modal.resource
Resource    ../../../locators/${PLATFORM_NAME}/widgets/widget_page.resource
*** Variables ***
${platform_txt_signup_enter_mobile_title}     xpath=//android.widget.TextView[@resource-id="${platform_txt_page_title}" and @text="${VALUE_CONTENT}"]
${platform_txt_signup_enter_mobile_subtitle}  ${platform_txt_page_subtitle}
${platform_input_signup_request_otp_value}      ${APP_PACKAGE}:id/edt
${platform_btn_signup_request_otp}        ${APP_PACKAGE}:id/btnRequestOTP


