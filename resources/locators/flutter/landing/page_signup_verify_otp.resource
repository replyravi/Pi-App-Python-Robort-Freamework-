*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../../resources/locators/${PLATFORM_NAME}/landing/page_signup_verify_otp.resource

*** Variables ***
&{txt_signup_verify_otp_title}              locator=${platform_txt_signup_verify_otp_title}            id_content=2672
&{txt_signup_verify_otp_mobile_subtitle}    locator=${platform_txt_signup_verify_otp_mobile_subtitle}  id_content=2673
&{txt_signup_verify_otp_email_subtitle}     locator=${platform_txt_signup_verify_otp_email_subtitle}   id_content=2683
&{txt_signup_verify_otp_value}              locator=${platform_txt_page_value}
&{txt_signup_verify_otp_time}               locator=${platform_txt_signup_verify_otp_time}           id_content=2674
&{input_signup_verify_otp_otp}              locator=${platform_input_signup_verify_otp}   
&{linktxt_signup_verify_otp_resend}         locator=${platform_linktxt_signup_verify_otp_resend}
&{txt_signup_verify_otp_resend}             locator=${platform_txt_signup_verify_otp_resend}         id_content=2675
&{txt_signup_verify_otp_incorrect}          locator=${platform_txt_signup_verify_otp_incorrect}      id_content=2791
&{txt_signup_verify_otp_expired}            locator=${platform_txt_signup_verify_otp_expired}        id_content=2679
&{txt_signup_verify_otp_reached_limit}      locator=${platform_txt_signup_verify_otp_reached_limit}  id_content=2792

&{txt_signup_verify_otp_error_request_limits_title}       locator=${platform_txt_modal_title}          id_content=2792
&{txt_signup_verify_otp_error_request_limits_message}     locator=${platform_txt_modal_message}        id_content=2793