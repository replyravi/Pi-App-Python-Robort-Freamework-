*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../../resources/locators/${PLATFORM_NAME}/landing/page_forgot_password.resource

*** Variables ***
&{txt_forgot_password_title}           locator=${platform_txt_forgot_password_title}         id_content=20
&{txt_forgot_password_subtitle}        locator=${platform_txt_forgot_password_sub_title}     id_content=21
&{txt_forgot_password_email_title}     locator=${platform_txt_forgot_password_email_title}   id_content=22
&{input_forgot_password_email}         locator=${platform_input_forgot_password_email}       id_content=53
&{txt_forgot_password_phone_title}     locator=${platform_txt_forgot_password_phone_title}   id_content=23
&{input_forgot_password_phone}         locator=${platform_input_forgot_password_phone}       id_content=54
&{btn_forgot_password_continue}        locator=${platform_btn_forgot_password_continue}      id_content=77
&{txt_forgot_password_email_error}     locator=${platform_txt_forgot_password_email_error}   id_content=51

&{txt_forgot_password_error_invalid_info_title}       locator=${platform_txt_modal_title}          id_content=71
&{txt_forgot_password_error_invalid_info_message}     locator=${platform_txt_modal_message}        id_content=70
&{btn_forgot_password_error_invalid_info_continue}    locator=${platform_btn_modal_confirm}        id_content=80

&{txt_forgot_password_error_cannot_verify_title}       locator=${platform_txt_modal_title}         id_content=74
&{txt_forgot_password_error_cannot_verify_message}     locator=${platform_txt_modal_message}       id_content=73
&{btn_forgot_password_error_cannot_verify_back_to_login}    locator=${platform_btn_modal_confirm}  id_content=49
