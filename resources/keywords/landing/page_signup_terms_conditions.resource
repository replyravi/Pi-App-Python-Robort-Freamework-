*** Settings ***
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/landing/page_signup_terms_conditions.resource
*** Keywords ***
Click Scroll Down Button On Terms And Conditions Page 
    actions.Click Element    &{btn_signup_terms_scroll_down}
    actions.Wait Until Element Is Visible    &{btn_signup_terms_confirm}

Accept Terms And Conditions As Required
    Click Scroll Down Button On Terms And Conditions Page 
    actions.Click Element    &{checkbox_signup_terms_condition}
    actions.Click Element At Position Left   &{checkbox_signup_terms_PDPA}
    actions.Click Element    &{checkbox_signup_terms_FATCA}
    actions.Element Should Be Enabled    &{btn_signup_terms_confirm}
    actions.Click Element    &{btn_signup_terms_confirm}
    Wait Until Loading Finished On Page

Verify Confirm Button Enabled On Terms And Conditions Page When Requires Checked
    actions.Element Should Be Disabled    &{btn_signup_terms_confirm}
    actions.Click Element    &{checkbox_signup_terms_condition}
    actions.Element Should Be Disabled    &{btn_signup_terms_confirm}
    actions.Click Element At Position Left  &{checkbox_signup_terms_PDPA}
    actions.Element Should Be Disabled    &{btn_signup_terms_confirm}
    actions.Click Element    &{checkbox_signup_terms_marketing}
    actions.Element Should Be Disabled    &{btn_signup_terms_confirm}
    actions.Click Element    &{checkbox_signup_terms_FATCA}
    actions.Element Should Be Enabled    &{btn_signup_terms_confirm}

Verify Confirm Button Enabled On Terms And Conditions Page 
    actions.Verify Text Element App Translation    &{txt_signup_terms_title}
    actions.Element Should Be Enabled    &{btn_signup_terms_confirm}

Verify App Contents On Terms And Conditions Page 
    actions.Verify Text Element App Translation    &{txt_signup_terms_title}
    actions.Verify Text Element App Translation    &{btn_signup_terms_scroll_down}
    Click Scroll Down Button On Terms And Conditions Page 
    actions.Verify Text Element App Translation    &{checkbox_signup_terms_condition}
    actions.Verify Text Element App Translation    &{checkbox_signup_terms_PDPA}
    actions.Verify Text Element App Translation    &{checkbox_signup_terms_FATCA}
    actions.Verify Text Element App Translation    &{checkbox_signup_terms_marketing}
    actions.Verify Text Element App Translation    &{btn_signup_terms_confirm}
