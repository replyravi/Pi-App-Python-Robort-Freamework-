*** Settings ***
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/landing/page_signup_verify_otp.resource
*** Keywords ***
Verify Verify OTP Mobile Page Displayed
    actions.Verify Text Element App Translation    &{txt_signup_verify_otp_title}
    actions.Verify Text Element App Translation    &{txt_signup_verify_otp_mobile_subtitle}

Verify Verify OTP Email Page Displayed
    actions.Verify Text Element App Translation    &{txt_signup_verify_otp_title}
    actions.Verify Text Element App Translation    &{txt_signup_verify_otp_email_subtitle}

Verify OTP Time 0:00 Text Displayed
    actions.Verify Text Element App Translation Replace With  txt_replacement=0:00   &{txt_signup_verify_otp_time} 
    actions.Verify Text Element App Translation    &{txt_signup_verify_otp_expired}

Verify App Contents On Verify OTP Mobile Page
    [Arguments]    ${value_for_request_otp}
    Verify Verify OTP Mobile Page Displayed
    ${otp_mobile_value} =  Set Variable    XXX-XXX-${value_for_request_otp}[-4:]
    actions.Verify Element Text Should Be  txt_expected=${otp_mobile_value}    &{txt_signup_verify_otp_value}

Verify App Contents On Verify OTP Email Page 
    [Arguments]    ${value_for_request_otp}
    Verify Verify OTP Email Page Displayed
    actions.Verify Element Text Should Be  txt_expected=${value_for_request_otp}    &{txt_signup_verify_otp_value}

Enter OTP 6 Digits
    [Arguments]    ${value_otp}=123456
    actions.Input Text    text=${value_otp}    &{input_signup_verify_otp_otp} 

Verify OTP Incorrect Error Text Displayed
    actions.Verify Text Element App Translation  &{txt_signup_verify_otp_incorrect}

Verify OTP Expired Error Text Displayed
    actions.Verify Text Element App Translation  &{txt_signup_verify_otp_expired}

Click Resend OTP Link Text 
    actions.Click Element    &{linktxt_signup_verify_otp_resend}
    Wait Until Loading Finished On Page

Verify OTP Request Limits Reached Bottom Sheet Displayed
    actions.Verify Text Element App Translation    &{txt_signup_verify_otp_error_request_limits_title}    
    actions.Verify Text Element App Translation    &{txt_signup_verify_otp_error_request_limits_message} 
    Click Area Outside On Page