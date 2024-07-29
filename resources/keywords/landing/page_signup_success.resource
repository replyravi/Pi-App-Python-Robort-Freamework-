*** Settings ***
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/landing/page_signup_success.resource
*** Keywords ***
Verify App Contents On Signup Success Page
    actions.Verify Text Element App Translation    &{txt_signup_success_title}
    actions.Verify Text Element App Translation    &{txt_signup_success_message} 	
    actions.Verify Text Element App Translation    &{btn_signup_success_open_account}
    actions.Verify Text Element App Translation    &{btn_signup_success_try_the_app}  

Verify UI On Signup Success Page
    Verify Back Icon Not Displayed On Page
    actions.Element Should Be Enabled    &{btn_signup_success_open_account}
    actions.Element Should Be Enabled    &{btn_signup_success_try_the_app}

Click Open Account Button On Signup Success Page
    actions.Click Element    &{btn_signup_success_open_account}
    Wait Until Loading Finished On Page

Click Try The App Button On Signup Success Page
    actions.Click Element    &{btn_signup_success_try_the_app}
    Wait Until Loading Finished On Page
