*** Settings ***

Resource    ../../configs/default.resource
Resource    ../../constants/data/test_data.${ENV}.resource
Resource    ../../resources/keywords/common/actions.resource
Resource    ../../resources/keywords/landing/page_forgot_password.resource
Resource    ../../resources/keywords/landing/page_reset_password.resource
Resource    ../../resources/keywords/landing/page_reset_password_otp.resource

Test Setup      Open Pi Securities Application
Test Teardown    Close Pi Securities Application
 
*** Test Cases ***

Forgot Password UI & App Contents
  [Tags]  forgotpassword  regression
    Click Forgot Password Link Text 
    Verify App Contents On Forgot Password Page
    Click Back Icon On Page
    Verify Login Page Displayed

Forgot Password With Email And Mobile Number Success For Guest Account
  [Tags]  forgotpassword  regression  guest
    Click Forgot Password Link Text 
    Submit Forgot Password With Email And Mobile Number    email=${USER_FORGOT_ACCOUNT}[email]    mobile_number=${USER_FORGOT_ACCOUNT}[mobile_number]
    Verify Reset Password Page Displayed
    Click Button Conitnue On Reset Password Page

# TODO  Forgot Password With Email And Mobile Number Success For Trade Account
  # [Tags]  forgotpassword  regression  trade

Forgot Password Submit Invalid Email Format
  [Tags]  forgotpassword  regression
    Click Forgot Password Link Text 
    Input Email On Forgot Password Page   email=diff@555
    Verify Forgot Password Need Enter Valid Email Address Error Text Displayed

Forgot Password Submit Invalid Information
  [Tags]  forgotpassword  regression
    Click Forgot Password Link Text 
    Submit Forgot Password With Email And Mobile Number    email=${USER_FORGOT_ACCOUNT}[email]    mobile_number=${USER_INVALID_ACCOUNT}[mobile_number]
    Verify Forgot Password Invalid Information Bottom Sheet Displayed
    Click Conitnue Button On Forgot Password Bottom Sheet
    Verify Forgot Password Page Displayed

Forgot Password Submit Reached Limit Attempt Not Able To Verify Your Identity
  [Tags]  forgotpassword  regression
    Click Forgot Password Link Text 
    Submit Forgot Password With Email And Mobile Number    email=${USER_FORGOT_ACCOUNT}[email]    mobile_number=${USER_INVALID_ACCOUNT}[mobile_number]
    Click Conitnue Button On Forgot Password Bottom Sheet 
    Click Conitnue Button On Forgot Password Page
    Click Conitnue Button On Forgot Password Bottom Sheet 
    Click Conitnue Button On Forgot Password Page
    Click Conitnue Button On Forgot Password Bottom Sheet 
    Click Conitnue Button On Forgot Password Page
    Verify Forgot Password Cannot Verify Your Identity Bottom Sheet Displayed



