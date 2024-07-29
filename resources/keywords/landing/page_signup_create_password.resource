*** Settings ***
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/landing/page_signup_create_password.resource

*** Keywords ***
Verify Create Password Page Displayed
    actions.Verify Text Element App Translation    &{txt_signup_create_password_title} 

Submit Create Password And Password Confirm
    [Arguments]     ${password}=Pi123456!
    actions.Input Text  text=${password}    &{input_signup_create_password}
    actions.Page Should Not Contain Element     &{icon_signup_create_password_condition_matched_checked} 
    actions.Input Text  text=${password}    &{input_signup_create_password_confirm}
    actions.Element Should Be Visible       &{icon_signup_create_password_condition_matched_checked}
    actions.Element Should Be Enabled       &{btn_signup_create_password_confirm}
    actions.Click Element    &{btn_signup_create_password_confirm}
    Wait Until Loading Finished On Page

Verify App Contents On Create Password Page
    actions.Verify Text Element App Translation    &{txt_signup_create_password_title} 
    actions.Verify Text Element App Translation    &{input_signup_create_password}
    actions.Verify Text Element App Translation    &{input_signup_create_password_confirm}
    actions.Verify Text Element App Translation    &{btn_signup_create_password_confirm}
    actions.Verify Text Element App Translation    &{txt_signup_create_password_condition_8_chars}
    actions.Verify Text Element App Translation    &{txt_signup_create_password_condition_1_upper}
    actions.Verify Text Element App Translation    &{txt_signup_create_password_condition_1_lower}
    actions.Verify Text Element App Translation    &{txt_signup_create_password_condition_1_number}
    actions.Verify Text Element App Translation    &{txt_signup_create_password_condition_1_special}
    actions.Verify Text Element App Translation    &{txt_signup_create_password_condition_matched}

Verify Confirm Button Disabled On Create Password Page
    actions.Element Should Be Disabled    &{btn_signup_create_password_confirm}

Verify All Conditions Not Checked On Create Password Page
    actions.Page Should Not Contain Element     &{icon_signup_create_password_condition_8_chars_checked}
    actions.Page Should Not Contain Element     &{icon_signup_create_password_condition_1_upper_checked}
    actions.Page Should Not Contain Element     &{icon_signup_create_password_condition_1_lower_checked}
    actions.Page Should Not Contain Element     &{icon_signup_create_password_condition_1_number_checked}   
    actions.Page Should Not Contain Element     &{icon_signup_create_password_condition_1_special_checked}
    actions.Page Should Not Contain Element     &{icon_signup_create_password_condition_matched_checked}

Verify Conditions Checked On Create Password Page
    ${password} =  Set Variable    Pi123456!
    actions.Input Text  text=${password[0:1]}    &{input_signup_create_password}
    actions.Element Should Be Visible     &{icon_signup_create_password_condition_1_upper_checked}

    actions.Input Text  text=${password[0:2]}      &{input_signup_create_password}
    actions.Element Should Be Visible     &{icon_signup_create_password_condition_1_upper_checked}
    actions.Element Should Be Visible     &{icon_signup_create_password_condition_1_lower_checked}

    actions.Input Text  text=${password[0:3]}     &{input_signup_create_password}
    actions.Element Should Be Visible     &{icon_signup_create_password_condition_1_upper_checked}
    actions.Element Should Be Visible     &{icon_signup_create_password_condition_1_lower_checked}
    actions.Element Should Be Visible     &{icon_signup_create_password_condition_1_number_checked}
    actions.Page Should Not Contain Element     &{icon_signup_create_password_condition_8_chars_checked}
    actions.Page Should Not Contain Element     &{icon_signup_create_password_condition_1_special_checked}
    actions.Page Should Not Contain Element     &{icon_signup_create_password_condition_matched_checked}

    actions.Input Text  text=${password[0:8]}      &{input_signup_create_password}
    actions.Element Should Be Visible     &{icon_signup_create_password_condition_1_upper_checked}
    actions.Element Should Be Visible     &{icon_signup_create_password_condition_1_lower_checked}
    actions.Element Should Be Visible     &{icon_signup_create_password_condition_1_number_checked}
    actions.Element Should Be Visible     &{icon_signup_create_password_condition_8_chars_checked}
    actions.Page Should Not Contain Element     &{icon_signup_create_password_condition_1_special_checked}
    actions.Page Should Not Contain Element     &{icon_signup_create_password_condition_matched_checked}

    actions.Input Text  text=${password}    &{input_signup_create_password}
    actions.Element Should Be Visible     &{icon_signup_create_password_condition_1_upper_checked}
    actions.Element Should Be Visible     &{icon_signup_create_password_condition_1_lower_checked}
    actions.Element Should Be Visible     &{icon_signup_create_password_condition_1_number_checked}
    actions.Element Should Be Visible     &{icon_signup_create_password_condition_8_chars_checked}
    actions.Element Should Be Visible     &{icon_signup_create_password_condition_1_special_checked}
    actions.Page Should Not Contain Element     &{icon_signup_create_password_condition_matched_checked}

    actions.Input Text  text=${password}notMatched  &{input_signup_create_password_confirm}
    actions.Page Should Not Contain Element         &{icon_signup_create_password_condition_matched_checked}

    actions.Input Text  text=${password}   &{input_signup_create_password_confirm}
    actions.Element Should Be Visible      &{icon_signup_create_password_condition_matched_checked}
