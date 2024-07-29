*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../../resources/locators/${PLATFORM_NAME}/landing/page_login_verify_mobile.resource

*** Variables ***
&{txt_login_verify_mobile_title}        locator=${platform_txt_login_verify_mobile_title}        id_content=146
&{btn_login_verify_mobile_code_sent}    locator=${platform_btn_login_verify_mobile_code_sent}    id_content=499
&{input_login_verify_mobile_value}      locator=${platform_input_login_verify_mobile_value}
&{input_login_verify_mobile_otp}        locator=${platform_input_login_verify_mobile_otp}
&{linktxt_login_verify_mobile_resend_code}    locator=${platform_linktxt_login_verify_mobile_resend_code}    id_content=143
&{txt_login_verify_mobile_expired}      locator=${platform_txt_login_verify_mobile_expired}    id_content=495
&{btn_login_verify_mobile_continue}     locator=${platform_btn_login_verify_mobile_continue}     id_content=63