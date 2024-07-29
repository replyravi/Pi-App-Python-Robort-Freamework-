*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../locators/${PLATFORM_NAME}/landing/page_signup_enter_email.resource

*** Variables ***
&{txt_signup_enter_email_title}     locator=${platform_txt_signup_enter_email_title}       id_content=2680
&{txt_signup_enter_email_subtitle}  locator=${platform_txt_signup_enter_email_subtitle}    id_content=2681
&{input_signup_enter_email_value}   locator=${platform_input_signup_enter_email_value}     id_content=2682
&{btn_signup_request_otp}           locator=${platform_btn_signup_request_otp}             id_content=2670

&{txt_signup_error_email_already_use_title}     locator=${platform_txt_modal_title}        id_content=2684
&{txt_signup_error_email_already_use_message}   locator=${platform_txt_modal_message}      id_content=2685
&{btn_signup_error_email_already_use_go_to_login}  locator=${platform_btn_modal_confirm}   id_content=2678
