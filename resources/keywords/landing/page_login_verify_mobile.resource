*** Settings ***
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/landing/page_login_verify_mobile.resource

*** Keywords ***
Enter OTP 6 Digits If Login Verify Mobile Phone Displayed
    [Arguments]    ${value_otp}=123456 
    actions.Input Text If Visible    text=${value_otp}    &{input_login_verify_mobile_otp}
    Wait Until Loading Finished On Page
