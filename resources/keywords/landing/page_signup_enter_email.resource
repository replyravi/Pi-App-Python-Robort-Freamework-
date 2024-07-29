*** Settings ***
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/landing/page_signup_enter_email.resource
*** Keywords ***
Verify Enter Your Email Page Displayed
    [Arguments]        ${value_for_request_otp}=${EMPTY}
    actions.Verify Text Element App Translation  &{txt_signup_enter_email_title}
    Run Keyword If  "${value_for_request_otp}" != "${EMPTY}"  actions.Verify Element Text Should Be    txt_expected=${value_for_request_otp}    &{input_signup_enter_email_value}

Verify App Contents On Enter Your Email Page
    Verify Enter Your Email Page Displayed
    actions.Verify Text Element App Translation    &{btn_signup_request_otp}  
    actions.Verify Text Element App Translation    &{input_signup_enter_email_value}

Input Email Value And Click Request OTP Button 
    [Arguments]        ${value_for_request_otp}
    actions.Input Text  text=${value_for_request_otp}    &{input_signup_enter_email_value}
    actions.Click Element    &{btn_signup_request_otp}
    Wait Until Loading Finished On Page

Verify Request OTP Button Disabled Until Correct Email Format Submitted
    actions.Element Should Be Disabled    &{btn_signup_request_otp}
    actions.Input Text    text=test.email    &{input_signup_enter_email_value}
    actions.Element Should Be Disabled    &{btn_signup_request_otp}
    actions.Input Text    text=test.email@pi.  &{input_signup_enter_email_value}
    actions.Element Should Be Disabled    &{btn_signup_request_otp}
    actions.Input Text    text=test.email@pi.th    &{input_signup_enter_email_value}   
    actions.Element Should Be Enabled    &{btn_signup_request_otp}

Verify Email Already In Use Bottom Sheet Displayed
    actions.Verify Text Element App Translation    &{txt_signup_error_email_already_use_title}
    actions.Verify Text Element App Translation    &{txt_signup_error_email_already_use_message}
    actions.Verify Text Element App Translation    &{btn_signup_error_email_already_use_go_to_login} 

Click Go To Login Button On Email Already In Use Bottom Sheet
    actions.Click Element    &{btn_signup_error_email_already_use_go_to_login}
    Wait Until Loading Finished On Page
