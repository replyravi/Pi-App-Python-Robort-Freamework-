*** Settings ***
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/landing/page_login.resource
Resource    ../../keywords/landing/page_login_verify_mobile.resource
*** Keywords ***
Click Sign Up Link Text 
    actions.Click Element At Position Right    &{linktxt_login_signup}

Click Forgot Password Link Text 
    actions.Click Element    &{linktxt_login_forgot_password}

Click Login Button
    actions.Click Element    &{btn_login_login}

Verify App Contents On Login Page
    Sleep  ${TINY_TIMEOUT}
    actions.Verify Text Element App Translation    &{input_login_username}
    actions.Verify Text Element App Translation    &{input_login_password}
    actions.Verify Text Element App Translation    &{btn_login_login}
    actions.Verify Text Element App Translation    &{linktxt_login_forgot_password}
    actions.Verify Text Element App Translation    &{linktxt_login_signup}

Submit Login With Username And Password
    [Arguments]     ${username}    ${password}
    actions.Input Text    text=${username}    &{input_login_username}
    actions.Input Text    text=${password}    &{input_login_password}
    actions.Click Element   &{btn_login_login}
    Wait Until Loading Finished On Page
    Enter OTP 6 Digits If Login Verify Mobile Phone Displayed

Verify Login Page Displayed
    actions.Wait Until Page Contains Element   &{input_login_username}
    
Verify Login Username Hint Text Displayed
    actions.Verify Text Element App Translation    &{txthint_login_username}
    actions.Page Should Not Contain Element  &{txthint_login_password}
    
Verify Login Incorrect Username Or Password Bottom Sheet Displayed
    actions.Verify Text Element App Translation    &{txt_login_error_incorrect_title}
    actions.Verify Text Element App Translation    &{txt_login_error_incorrect_message}

Verify Login Username And Password Are Required Hint Text Displayed
    actions.Verify Text Element App Translation    &{txthint_login_username}
    actions.Verify Text Element App Translation    &{txthint_login_password}
