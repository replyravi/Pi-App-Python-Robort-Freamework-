*** Settings ***
Resource    ../../configs/default.resource
Resource    ../../constants/data/test_data.${ENV}.resource
Resource    ../../resources/keywords/common/actions.resource
Resource    ../../resources/keywords/landing/page_signup_terms_conditions.resource
Resource    ../../resources/keywords/landing/page_signup_verify_otp.resource
Resource    ../../resources/keywords/landing/page_signup_enter_email.resource
Resource    ../../resources/keywords/landing/page_signup_enter_mobile_number.resource
Resource    ../../resources/keywords/landing/page_signup_create_password.resource
Resource    ../../resources/keywords/landing/page_signup_success.resource
Resource    ../../resources/keywords/account/page_onboarding_preparation.resource

Test Setup      Open Pi Securities Application
Suite Teardown    Close Pi Securities Application

*** Test Cases ***

Sign Up Success Then Open Account
  [Tags]  signup  regression
    Click Sign Up Link Text 
    Accept Terms And Conditions As Required
    ${data} =  Get Random Mobile Number and Email
    Input Mobile Value And Click Request OTP Button   value_for_request_otp=${data}[mobile_number]
    Enter OTP 6 Digits
    Input Email Value And Click Request OTP Button   value_for_request_otp=${data}[email]
    Enter OTP 6 Digits
    Submit Create Password And Password Confirm
    Verify App Contents On Signup Success Page
    Click Open Account Button On Signup Success Page
    Verify Onboarding Preparation Page Displayed

Sign Up Success Then Try The App
  [Tags]  signup  regression
    Click Sign Up Link Text 
    Accept Terms And Conditions As Required
    ${data} =  Get Random Mobile Number and Email
    Input Mobile Value And Click Request OTP Button   value_for_request_otp=${data}[mobile_number]
    Enter OTP 6 Digits
    Input Email Value And Click Request OTP Button   value_for_request_otp=${data}[email]
    Enter OTP 6 Digits
    Submit Create Password And Password Confirm
    Verify App Contents On Signup Success Page
    Click Try The App Button On Signup Success Page
    Verify Home Page Displayed

Sign Up UI & App Contents On Page Terms & Conditions Page
  [Tags]  signup  regression
    Click Sign Up Link Text 
    Verify App Contents On Terms And Conditions Page
    # TODO Verify Personal Data Protect Act Link Text Url
    Verify Confirm Button Enabled On Terms And Conditions Page When Requires Checked
    Click Back Icon On Page
    Verify Login Page Displayed

Sign Up UI & App Contents On Enter Your Mobile Number Page And Verify OTP Page
  [Tags]  signup  regression
    Click Sign Up Link Text 
    Accept Terms And Conditions As Required
    Verify App Contents On Enter Your Mobile Number Page
    Verify Request OTP Button Disabled Until Fully Mobile Number Submitted
    ${data} =  Get Random Mobile Number and Email
    Input Mobile Value And Click Request OTP Button   value_for_request_otp=${data}[mobile_number]
    Verify App Contents On Verify OTP Mobile Page    value_for_request_otp=${data}[mobile_number]
    Click Back Icon On Page
    Verify Enter Your Mobile Number Page Displayed    value_for_request_otp=${data}[mobile_number]
    Click Back Icon On Page
    Verify Confirm Button Enabled On Terms And Conditions Page 

Sign Up Mobile Verify Enter Mobile Number Already In Use
  [Tags]  signup  regression
    Click Sign Up Link Text 
    Accept Terms And Conditions As Required
    Input Mobile Value And Click Request OTP Button   value_for_request_otp=${USER_GUEST_ACCOUNT}[mobile_number]
    Verify Mobile Number Already In Use Bottom Sheet Displayed
    Click Go To Login Button On Mobile Number Already In Use Bottom Sheet
    Verify Login Page Displayed

Sign Up Mobile Verify OTP Expired And Resend Success
  [Tags]  signup  regression
    Click Sign Up Link Text 
    Accept Terms And Conditions As Required
    ${data} =  Get Random Mobile Number and Email
    Input Mobile Value And Click Request OTP Button   value_for_request_otp=${data}[mobile_number]
    Sleep   3 minutes
    Verify OTP Time 0:00 Text Displayed
    Verify OTP Expired Error Text Displayed
    Enter OTP 6 Digits
    Verify OTP Time 0:00 Text Displayed
    Verify OTP Expired Error Text Displayed
    Click Resend OTP Link Text 
    Enter OTP 6 Digits  
    Verify Enter Your Email Page Displayed

Sign Up Mobile Verify OTP Request Limits Reached
  [Tags]  signup  regression
    Click Sign Up Link Text 
    Accept Terms And Conditions As Required
    ${data} =  Get Random Mobile Number and Email
    Input Mobile Value And Click Request OTP Button   value_for_request_otp=${data}[mobile_number]
    Click Resend OTP Link Text 
    Click Resend OTP Link Text 
    Click Resend OTP Link Text 
    Verify OTP Request Limits Reached Bottom Sheet Displayed
    Click Resend OTP Link Text 
    Verify OTP Request Limits Reached Bottom Sheet Displayed
    
Sign Up Mobile Verify OTP Incorrect And Resend Success
  [Tags]  signup  regression
    Click Sign Up Link Text 
    Accept Terms And Conditions As Required
    ${data} =  Get Random Mobile Number and Email
    Input Mobile Value And Click Request OTP Button   value_for_request_otp=${data}[mobile_number]
    Enter OTP 6 Digits    value_otp=111111
    Verify OTP Incorrect Error Text Displayed
    Click Resend OTP Link Text 
    Enter OTP 6 Digits  
    Verify Enter Your Email Page Displayed

Sign Up UI & App Contents On Enter Your Email Page And Verify OTP Page
  [Tags]  signup  regression
    Click Sign Up Link Text 
    Accept Terms And Conditions As Required
    ${data} =  Get Random Mobile Number and Email
    Input Mobile Value And Click Request OTP Button   value_for_request_otp=${data}[mobile_number]
    Enter OTP 6 Digits
    Verify App Contents On Enter Your Email Page
    Verify Request OTP Button Disabled Until Correct Email Format Submitted
    Input Email Value And Click Request OTP Button   value_for_request_otp=${data}[email]
    Verify App Contents On Verify OTP Email Page     ${data}[email]
    Click Back Icon On Page
    Verify Enter Your Email Page Displayed    ${data}[email]
    Click Back Icon On Page
    Verify Enter Your Mobile Number Page Displayed    ${data}[mobile_number]

Sign Up Email Verify Enter Your Email Already In Use
  [Tags]  signup  regression
    Click Sign Up Link Text 
    Accept Terms And Conditions As Required
    ${data} =  Get Random Mobile Number and Email
    Input Mobile Value And Click Request OTP Button   value_for_request_otp=${data}[mobile_number]
    Enter OTP 6 Digits
    Input Email Value And Click Request OTP Button   value_for_request_otp=${USER_GUEST_ACCOUNT}[email]
    Verify Email Already In Use Bottom Sheet Displayed
    Click Go To Login Button On Email Already In Use Bottom Sheet
    Verify Login Page Displayed

Sign Up Email Verify OTP Expired And Resend Success
  [Tags]  signup  regression
    Click Sign Up Link Text 
    Accept Terms And Conditions As Required
    ${data} =  Get Random Mobile Number and Email
    Input Mobile Value And Click Request OTP Button   value_for_request_otp=${data}[mobile_number]
    Enter OTP 6 Digits
    Input Email Value And Click Request OTP Button   value_for_request_otp=${data}[email]
    Sleep   3 minutes
    Verify OTP Time 0:00 Text Displayed
    Verify OTP Expired Error Text Displayed
    Enter OTP 6 Digits
    Verify OTP Time 0:00 Text Displayed
    Verify OTP Expired Error Text Displayed
    Click Resend OTP Link Text 
    Enter OTP 6 Digits  
    Verify Create Password Page Displayed

Sign Up Email Verify OTP Request Limits Reached
  [Tags]  signup  regression  robot:skip-on-failure
  [Documentation]  This test expects to fail due to issue TES-553 just found
    Click Sign Up Link Text 
    Accept Terms And Conditions As Required
    ${data} =  Get Random Mobile Number and Email
    Input Mobile Value And Click Request OTP Button   value_for_request_otp=${data}[mobile_number]
    Enter OTP 6 Digits
    Input Email Value And Click Request OTP Button   value_for_request_otp=${data}[email]
    Click Resend OTP Link Text 
    Click Resend OTP Link Text 
    Click Resend OTP Link Text 
    Verify OTP Request Limits Reached Bottom Sheet Displayed
    Click Resend OTP Link Text 
    Verify OTP Request Limits Reached Bottom Sheet Displayed

Sign Up Email Verify OTP Incorrect And Resend Success
  [Tags]  signup  regression
    Click Sign Up Link Text 
    Accept Terms And Conditions As Required
    ${data} =  Get Random Mobile Number and Email
    Input Mobile Value And Click Request OTP Button   value_for_request_otp=${data}[mobile_number]
    Enter OTP 6 Digits
    Input Email Value And Click Request OTP Button   value_for_request_otp=${data}[email]
    Enter OTP 6 Digits    value_otp=11223344
    Verify OTP Incorrect Error Text Displayed
    Click Resend OTP Link Text 
    Enter OTP 6 Digits  
    Verify Create Password Page Displayed

Sign Up UI & App Contents On Create A Password Page
  [Tags]  signup  regression
    Click Sign Up Link Text 
    Accept Terms And Conditions As Required
    ${data} =  Get Random Mobile Number and Email
    Input Mobile Value And Click Request OTP Button   value_for_request_otp=${data}[mobile_number]
    Enter OTP 6 Digits
    Input Email Value And Click Request OTP Button   value_for_request_otp=${data}[email]
    Enter OTP 6 Digits
    Verify App Contents On Create Password Page
    Verify Confirm Button Disabled On Create Password Page
    Verify Back Icon Not Displayed On Page
    Verify All Conditions Not Checked On Create Password Page
    Verify Conditions Checked On Create Password Page

