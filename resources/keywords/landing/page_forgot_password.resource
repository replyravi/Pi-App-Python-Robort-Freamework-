*** Settings ***
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/landing/page_forgot_password.resource

*** Keywords ***
Submit Forgot Password With Email And Mobile Number
    [Arguments]     ${email}    ${mobile_number}
    Input Email On Forgot Password Page    ${email}
    Input Mobile Number On Forgot Password Page    ${mobile_number}
    Click Conitnue Button On Forgot Password Page

Input Email On Forgot Password Page
    [Arguments]     ${email}
    actions.Input Text    text=${email}     &{input_forgot_password_email}

Input Mobile Number On Forgot Password Page
    [Documentation]  This keyword has a workaround step to tap the last digit mobile_number after input phone number
    [Arguments]     ${mobile_number}
    actions.Input Text    text=${mobile_number}       &{input_forgot_password_phone}
    Click Element    &{input_forgot_password_phone} 
    Tap Number In Keyboard    number=${mobile_number[9:]}

Verify Forgot Password Page Displayed
    actions.Verify Text Element App Translation    &{txt_forgot_password_title}

Verify Input Email and Mobile Number Displayed On Forgot Password Page
    [Arguments]     ${email}    ${mobile_number}
    actions.Verify Element Text Should Be    txt_expected=${email}    &{input_forgot_password_email}
    actions.Verify Element Text Should Be    txt_expected=${mobile_number}    &{input_forgot_password_phone}

Verify App Contents On Forgot Password Page
    actions.Verify Text Element App Translation    &{txt_forgot_password_title}
    actions.Verify Text Element App Translation    &{txt_forgot_password_sub_title}
    actions.Verify Text Element App Translation    &{txt_forgot_password_email_title}
    actions.Verify Text Element App Translation    &{input_forgot_password_email}
    actions.Verify Text Element App Translation    &{txt_forgot_password_phone_title} 
    actions.Verify Text Element App Translation    &{input_forgot_password_phone}

Verify Continue Button Disabled On Forgot Password Page
    actions.Element Should Be Disabled    &{btn_forgot_password_continue}

Click Conitnue Button On Forgot Password Page
    actions.Element Should Be Enabled    &{btn_forgot_password_continue}
    actions.Click Element    &{btn_forgot_password_continue}
    Wait Until Loading Finished On Page

Verify Forgot Password Invalid Information Bottom Sheet Displayed
    actions.Verify Text Element App Translation    &{txt_forgot_password_error_invalid_info_title}
    actions.Verify Text Element App Translation    &{txt_forgot_password_error_invalid_info_message}  
    actions.Verify Text Element App Translation    &{btn_forgot_password_error_invalid_info_continue} 

Verify Forgot Password Cannot Verify Your Identity Bottom Sheet Displayed
    actions.Verify Text Element App Translation    &{txt_forgot_password_error_cannot_verify_title}
    actions.Verify Text Element App Translation    &{txt_forgot_password_error_cannot_verify_message}
    actions.Verify Text Element App Translation    &{btn_forgot_password_error_cannot_verify_back_to_login}

Click Back To Login Button On Forgot Password Cannot Verify Your Identity Bottom Sheet
    actions.Click Element    &{btn_forgot_password_error_cannot_verify_back_to_login}

Click Conitnue Button On Forgot Password Bottom Sheet 
    actions.Click Element    &{btn_forgot_password_error_invalid_info_continue}

Verify Forgot Password Need Enter Valid Email Address Error Text Displayed
    actions.Verify Text Element App Translation    &{txt_forgot_password_email_error}
    
 