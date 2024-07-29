*** Settings ***

Resource    ../../configs/default.resource
Resource    ../../constants/data/test_data.${ENV}.resource
Resource    ../../resources/keywords/common/actions.resource
Resource    ../../resources/keywords/landing/page_forgot_password.resource
Resource    ../../resources/keywords/landing/page_reset_password.resource
Resource    ../../resources/keywords/landing/page_reset_password_otp.resource
Resource    ../../resources/keywords/landing/page_reset_password_createnew.resource

Test Setup       Open Pi Securities Application And Forgot Password    ${email}    ${mobile_number}
Test Teardown    Close Pi Securities Application

*** Variables ***
${email}            ${USER_FORGOT_ACCOUNT}[email]
${mobile_number}    ${USER_FORGOT_ACCOUNT}[mobile_number]

*** Keywords ***
Open Pi Securities Application And Forgot Password
    [Arguments]    ${email}    ${mobile_number}
    Open Pi Securities Application
    Click Forgot Password Link Text
    Submit Forgot Password With Email And Mobile Number    email=${email}   mobile_number=${mobile_number}

*** Test Cases ***
Reset Password UI & App Contents
  [Tags]  resetpassword  regression
    Verify Reset Password Page Displayed
    Verify App Contents On Reset Password Page    email=${email}    mobile_number=${mobile_number}
    Verify Continue Button Enabled On Reset Password Page
    Click Back Icon On Page
    Verify Forgot Password Page Displayed
    Verify Input Email and Mobile Number Displayed On Forgot Password Page    email=${email}    mobile_number=${mobile_number}
    Click Conitnue Button On Forgot Password Page
    
Reset Password OTP UI & App Contents
  [Tags]  resetpassword  regression
    Verify Reset Password Page Displayed
    Click Button Conitnue On Reset Password Page
    Verify App Contents Reset Password Via Email OTP Page    email=${email}
    Verify Resend Reset Code Button Enabled On Reset Password OTP Page
    Verify Continue Button Disabled On Reset Password OTP Page
    Enter OTP 6 Digits On Reset Password OTP Page    value_otp=121212
    Verify Try Again Text Displayed On Reset Password OTP Page
    Click Back Icon On Page
    Click Reset Via Mobile Phone And Continue On Reset Password Page
    Verify App Contents Reset Password Via Mobile Phone OTP Page    mobile_number=${mobile_number}
    Verify Continue Button Disabled On Reset Password OTP Page
    Enter OTP 6 Digits On Reset Password OTP Page    value_otp=654321
    Verify Try Again Text Displayed On Reset Password OTP Page

Reset Password Via Email And Create New Password Success
  [Tags]  resetpassword  regression
    Verify Reset Password Page Displayed
    Click Button Conitnue On Reset Password Page
    Enter OTP 6 Digits On Reset Password OTP Page
    ${new_password} =  Get Random New Password
    Submit Create New Password On Reset Password Create New Password Page    password=${new_password} 
    Click Back To Login Button On All Done Please Login Again Bottom Sheet
    Verify Login Page Displayed
    Submit Login With Username And Password    username=${email}    password=${new_password}
    Verify Home Page Displayed

Reset Password Via Mobile Phone And Create New Password Success
  [Tags]  resetpassword  regression
    Verify Reset Password Page Displayed
    Click Reset Via Mobile Phone And Continue On Reset Password Page
    Enter OTP 6 Digits On Reset Password OTP Page
    ${new_password} =  Get Random New Password
    Submit Create New Password On Reset Password Create New Password Page    password=${new_password} 
    Click Back To Login Button On All Done Please Login Again Bottom Sheet
    Verify Login Page Displayed
    Submit Login With Username And Password    username=${email}    password=${new_password}
    Verify Home Page Displayed
    
Reset Password Via Email OTP Expired And Resend Success
  [Tags]  resetpassword  regression
    Verify Reset Password Page Displayed
    Click Button Conitnue On Reset Password Page
    Sleep   3 minutes
    Verify OTP Time Reset Code Expired Text Displayed
    Enter OTP 6 Digits On Reset Password OTP Page
    Verify OTP Expired Sent To Your Email Bottom Sheet Displayed
    Click Continue Button On OTP Expired Bottom Sheet
    Click Resend Reset Code Button On Reset Password OTP Page
    Enter OTP 6 Digits On Reset Password OTP Page
    Verify Reset Password Create New Password Page Displayed

Reset Password Via Mobile Phone OTP Expired And Resend Success
  [Tags]  resetpassword  regression
    Verify Reset Password Page Displayed
    Click Reset Via Mobile Phone And Continue On Reset Password Page
    Sleep   3 minutes
    Verify OTP Time Reset Code Expired Text Displayed
    Enter OTP 6 Digits On Reset Password OTP Page
    Verify OTP Expired Sent To Your Mobile Phone Bottom Sheet Displayed
    Click Continue Button On OTP Expired Bottom Sheet
    Click Resend Reset Code Button On Reset Password OTP Page
    Enter OTP 6 Digits On Reset Password OTP Page
    Verify Reset Password Create New Password Page Displayed

Reset Password Via Email Verification Limits Reached
  [Tags]  resetpassword  regression
    Verify Reset Password Page Displayed
    Click Button Conitnue On Reset Password Page
    FOR    ${index}    IN RANGE    4
      Enter OTP 6 Digits On Reset Password OTP Page    value_otp=123401
      Click Try Again Text On Reset Password OTP Page
    END
    Enter OTP 6 Digits On Reset Password OTP Page    value_otp=123405
    Verify OTP Verification Limits Reached Bottom Sheet Displayed
    Click Continue Button On OTP Verification Limits Reached Bottom Sheet

Reset Password Via Mobile Phone OTP Verification Limits Reached
  [Tags]  resetpassword  regression
    Verify Reset Password Page Displayed
    Click Reset Via Mobile Phone And Continue On Reset Password Page
    FOR    ${index}    IN RANGE    4
      Enter OTP 6 Digits On Reset Password OTP Page    value_otp=123401
      Click Try Again Text On Reset Password OTP Page
    END
    Enter OTP 6 Digits On Reset Password OTP Page    value_otp=123405
    Verify OTP Verification Limits Reached Bottom Sheet Displayed
    Click Continue Button On OTP Verification Limits Reached Bottom Sheet

Reset Password Create New Password UI & App Contents
  [Tags]  resetpassword  regression
    Verify Reset Password Page Displayed
    Click Reset Via Mobile Phone And Continue On Reset Password Page
    Enter OTP 6 Digits On Reset Password OTP Page
    Verify App Contents On Reset Password Create New Password Page
    Verify All Conditions Not Checked On Reset Password Create New Password Page
    Verify Confirm Button Disabled On Reset Password Create New Password Page
    Verify Conditions Checked On Reset Password Create New Password Page 
