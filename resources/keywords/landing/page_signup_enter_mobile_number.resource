*** Settings ***
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/landing/page_signup_enter_mobile_number.resource
*** Keywords ***
Verify Enter Your Mobile Number Page Displayed
    [Arguments]        ${value_for_request_otp}=${EMPTY}
    actions.Verify Text Element App Translation  &{txt_signup_enter_mobile_title}
    Run Keyword If  "${value_for_request_otp}" != "${EMPTY}"  actions.Verify Element Text Should Be    txt_expected=${value_for_request_otp[0:3]}-${value_for_request_otp[3:6]}-${value_for_request_otp[6:]}    &{input_signup_enter_mobile_value}

Verify App Contents On Enter Your Mobile Number Page
    Verify Enter Your Mobile Number Page Displayed
    actions.Verify Text Element App Translation    &{btn_signup_request_otp}
    actions.Verify Text Element App Translation    &{input_signup_enter_mobile_value}

Input Mobile Value And Click Request OTP Button 
    [Arguments]        ${value_for_request_otp}
    actions.Input Text  text=${value_for_request_otp}    &{input_signup_enter_mobile_value}  
    actions.Click Element    &{btn_signup_request_otp}
    Wait Until Loading Finished On Page

Verify Request OTP Button Disabled Until Fully Mobile Number Submitted
    actions.Element Should Be Disabled    &{btn_signup_request_otp}
    actions.Input Text    text=0    &{input_signup_enter_mobile_value}
    actions.Element Should Be Disabled    &{btn_signup_request_otp}
    actions.Input Text    text=80011109    &{input_signup_enter_mobile_value}
    actions.Element Should Be Disabled    &{btn_signup_request_otp}
    actions.Input Text    text=0800111091    &{input_signup_enter_mobile_value}     
    actions.Element Should Be Enabled    &{btn_signup_request_otp}

Verify Mobile Number Already In Use Bottom Sheet Displayed
    actions.Verify Text Element App Translation    &{txt_signup_error_mobbile_already_use_title}
    actions.Verify Text Element App Translation    &{txt_signup_error_mobile_already_use_message}
    actions.Verify Text Element App Translation    &{btn_signup_error_mobile_already_use_go_to_login} 

Click Go To Login Button On Mobile Number Already In Use Bottom Sheet
    actions.Click Element    &{btn_signup_error_mobile_already_use_go_to_login}
    Wait Until Loading Finished On Page




