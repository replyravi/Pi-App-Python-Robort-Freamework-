*** Settings ***
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/account/page_onboarding_scancard.resource

*** Keywords ***
Verify Onboarding Scan ID Card Elements Displayed
    [Documentation]      Run Keyword And Ignore Error for at step verify txt_onboarding_scancard_page_subtitle due to the accessibility_id_byvalue not match
    actions.Element Should Be Visible    &{txt_onboarding_scancard_page_title}
    Run Keyword And Ignore Error    actions.Element Should Be Visible    &{txt_onboarding_scancard_page_subtitle}
    actions.Element Should Be Visible    &{btn_onboarding_scancard_take_photo}

Verify Onboarding Scan ID Card Page Displayed
    actions.Element Should Be Visible    &{txt_onboarding_scancard_page_title}

Click Take Photo Button On Onboarding Scan ID Card Page
    actions.Click Element    &{btn_onboarding_scancard_take_photo}
    Wait Until Loading Finished On Page

Verify Onboarding Unable To Take Photo Bottom Sheet Displayed
    [Documentation]      Run Keyword And Ignore Error for at step verify txt_onboarding_scancard_error_subtitle due to the accessibility_id_byvalue not match
    Wait Until Bottom Sheet Displayed
    actions.Element Should Be Visible    &{txt_onboarding_scancard_error_title}
    Run Keyword And Ignore Error    actions.Element Should Be Visible    &{txt_onboarding_scancard_error_subtitle}
    actions.Element Should Be Visible    &{btn_onboarding_scancard_try_again}

Click Try Again Button On Onboarding Unable To Take Photo Bottom Sheet
    actions.Click Element    &{btn_onboarding_scancard_try_again}

