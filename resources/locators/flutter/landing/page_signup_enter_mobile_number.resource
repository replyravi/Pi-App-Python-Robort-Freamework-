*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../../resources/locators/${PLATFORM_NAME}/landing/page_signup_enter_mobile_number.resource

*** Variables ***
&{txt_signup_enter_mobile_title}     locator=${platform_txt_signup_enter_mobile_title}     id_content=2666
&{txt_signup_enter_mobile_subtitle}  locator=${platform_txt_signup_enter_mobile_subtitle}  id_content=2667
&{input_signup_enter_mobile_value}   locator=${platform_input_signup_request_otp_value}    id_content=2668
&{btn_signup_request_otp}            locator=${platform_btn_signup_request_otp}            id_content=2670

&{txt_signup_error_mobbile_already_use_title}     locator=${platform_txt_modal_title}      id_content=2676
&{txt_signup_error_mobile_already_use_message}   locator=${platform_txt_modal_message}     id_content=2677
&{btn_signup_error_mobile_already_use_go_to_login}  locator=${platform_btn_modal_confirm}  id_content=2678

