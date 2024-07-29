*** Settings ***
Resource    ../../../../configs/android.resource
# Resource    ../../../../resources/widgets/widget_page.resource
Resource    ../../../../resources/locators/android/widgets/widget_page.resource

*** Variables ***
${platform_txt_reset_password_title}            ${platform_txt_page_title}      
${platform_txt_reset_password_subtitle}         ${APP_PACKAGE}:id/tv_sub_title
${platform_card_reset_password_via_email}       ${APP_PACKAGE}:id/verify_via_email
${platform_txt_reset_password_via_email_title}  ${APP_PACKAGE}:id/tv_via_email_title
${platform_txt_reset_password_via_email_value}  ${APP_PACKAGE}:id/tv_via_email
${platform_card_reset_password_via_phone}       ${APP_PACKAGE}:id/verify_via_phone
${platform_txt_reset_password_via_phone_title}  ${APP_PACKAGE}:id/tv_via_phone_title
${platform_txt_reset_password_via_phone_value}  ${APP_PACKAGE}:id/tv_via_phone
${platform_btn_reset_password_continue}         ${APP_PACKAGE}:id/continue_button

