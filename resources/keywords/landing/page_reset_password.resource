*** Settings ***
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/landing/page_reset_password.resource

*** Keywords ***
Verify Reset Password Page Displayed
    actions.Verify Text Element App Translation    &{txt_reset_password_title}

Verify App Contents On Reset Password Page
    [Arguments]    ${email}    ${mobile_number}
    actions.Verify Text Element App Translation    &{txt_reset_password_title}
    actions.Verify Text Element App Translation    &{txt_reset_password_subtitle}
    actions.Verify Text Element App Translation    &{txt_reset_password_via_email_title}
    actions.Verify Element Text Should Be    txt_expected=${email}    &{txt_reset_password_via_email_value}
    actions.Verify Text Element App Translation    &{txt_reset_password_via_phone_title}
    actions.Verify Element Text Should Be    txt_expected=+66 ${mobile_number}    &{txt_reset_password_via_phone_value}
    actions.Verify Text Element App Translation    &{btn_reset_password_continue}

Verify Continue Button Enabled On Reset Password Page
    actions.Element Should Be Enabled    &{btn_reset_password_continue}

Click Button Conitnue On Reset Password Page
    actions.Element Should Be Enabled    &{btn_reset_password_continue}
    actions.Click Element    &{btn_reset_password_continue}
    Wait Until Loading Finished On Page

Click Reset Via Mobile Phone And Continue On Reset Password Page
    actions.Click Element    &{card_reset_password_via_phone}
    actions.Click Element    &{btn_reset_password_continue}
    Wait Until Loading Finished On Page
