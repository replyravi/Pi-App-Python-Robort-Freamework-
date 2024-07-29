*** Settings ***
Resource    ../../../../configs/android.resource
Resource    ../../../locators/${PLATFORM_NAME}/widgets/widget_modal.resource
Resource    ../../../locators/${PLATFORM_NAME}/widgets/widget_page.resource

*** Variables ***
${platform_txt_forgot_password_title}           ${platform_txt_page_title}    
${platform_txt_forgot_password_subtitle}        ${APP_PACKAGE}:id/tv_sub_title
${platform_txt_forgot_password_email_title}     ${APP_PACKAGE}:id/tv_email_title
${platform_input_forgot_password_email}         ${APP_PACKAGE}:id/et_email
${platform_txt_forgot_password_phone_title}     ${APP_PACKAGE}:id/tv_phone_title
${platform_input_forgot_password_phone}         ${APP_PACKAGE}:id/et_phone
${platform_btn_forgot_password_continue}        ${APP_PACKAGE}:id/input_info_continue_button
${platform_txt_forgot_password_email_error}     ${APP_PACKAGE}:id/tv_email_error
