*** Settings ***
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/landing/page_reset_password_otp.resource
*** Keywords ***

Enter OTP 6 Digits On Reset Password OTP Page
    [Arguments]    ${value_otp}=123456 
    actions.Input Text    text=${value_otp}  &{input_reset_password_otp}

Verify App Contents Reset Password Via Email OTP Page
    [Arguments]    ${email}
    actions.Verify Text Element App Translation    &{txt_reset_password_otp_title}
    actions.Verify Text Element App Translation    &{txt_reset_password_otp_email_title}
    actions.Verify Element Text Should Be    txt_expected=${email}    &{input_reset_password_otp_email}
    actions.Verify Text Element App Translation    &{btn_reset_password_otp_email_resetcode}
    actions.Element Should Be Disabled    &{btn_reset_password_otp_email_resetcode}
    actions.Verify Text Element App Translation    &{txt_reset_password_otp_email_inputtitle} 
    actions.Verify Element Text Should Be    txt_expected=${EMPTY}    &{input_reset_password_otp}
    actions.Verify Text Element App Translation    &{btn_reset_password_otp_resend}
    actions.Verify Text Element App Translation    &{btn_reset_password_otp_continue}

Verify App Contents Reset Password Via Mobile Phone OTP Page
    [Arguments]    ${mobile_number}
    actions.Verify Text Element App Translation    &{txt_reset_password_otp_title}
    actions.Verify Text Element App Translation    &{txt_reset_password_otp_phone_title}
    actions.Verify Element Text Should Be    txt_expected=${mobile_number}    &{input_reset_password_otp_phone}
    actions.Verify Text Element App Translation    &{btn_reset_password_otp_phone_resetcode}
    actions.Element Should Be Disabled    &{btn_reset_password_otp_phone_resetcode}
    actions.Verify Text Element App Translation    &{txt_reset_password_otp_phone_inputtitle} 
    actions.Verify Element Text Should Be    txt_expected=${EMPTY}    &{input_reset_password_otp}
    actions.Verify Text Element App Translation    &{btn_reset_password_otp_resend}
    actions.Verify Text Element App Translation    &{btn_reset_password_otp_continue}

Verify Continue Button Disabled On Reset Password OTP Page
    actions.Element Should Be Disabled  &{btn_reset_password_otp_continue}
    
Verify OTP Time Reset Code Expired Text Displayed    
    actions.Verify Text Element App Translation    &{txt_reset_password_otp_timerexpired}

Verify Resend Reset Code Button Enabled On Reset Password OTP Page
    actions.Element Should Be Enabled    &{btn_reset_password_otp_resend}
    
Click Resend Reset Code Button On Reset Password OTP Page
    actions.Click Element    &{btn_reset_password_otp_resend}
    Wait Until Loading Finished On Page

Verify OTP Expired Sent To Your Mobile Phone Bottom Sheet Displayed
    actions.Verify Text Element App Translation    &{txt_reset_password_otp_expired_title}
    actions.Verify Text Element App Translation    &{txt_reset_password_otp_expired_phone_subtitle}
    actions.Verify Text Element App Translation    &{btn_reset_password_otp_expired_continue}

Verify OTP Expired Sent To Your Email Bottom Sheet Displayed
    actions.Verify Text Element App Translation    &{txt_reset_password_otp_expired_title}
    actions.Verify Text Element App Translation    &{txt_reset_password_otp_expired_email_subtitle}
    actions.Verify Text Element App Translation    &{btn_reset_password_otp_expired_continue}

Click Continue Button On OTP Expired Bottom Sheet
    actions.Click Element    &{btn_reset_password_otp_expired_continue}
    
Verify Try Again Text Displayed On Reset Password OTP Page
    actions.Verify Text Element App Translation    &{txt_reset_password_otp_tryagain}

Click Try Again Text On Reset Password OTP Page
    actions.Click Element   &{txt_reset_password_otp_tryagain}

Verify OTP Verification Limits Reached Bottom Sheet Displayed
    actions.Verify Text Element App Translation    &{txt_reset_password_otp_limits_title}
    actions.Verify Text Element App Translation    &{txt_reset_password_otp_limits_subtitle}
    actions.Verify Text Element App Translation    &{btn_reset_password_otp_limits_continue}

Click Continue Button On OTP Verification Limits Reached Bottom Sheet
    actions.Click Element    &{btn_reset_password_otp_limits_continue}
