*** Settings ***
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/account/page_onboarding_preparation.resource

*** Keywords ***
Click Get Started Button On Onboarding Preparation Page
    actions.Click Element  &{btn_onboarding_prep_get_started}
    Wait Until Loading Finished On Page

Click Later Button On Onboarding Preparation Page
    actions.Click Element   &{btn_onboarding_prep_later}

Verify Onboarding Preparation Page Displayed
    Wait Until Loading Finished On Page
    actions.Element Should Be Visible  &{txt_onboarding_prep_page_title}

Verify Onboarding Preparation Elements Displayed
    [Documentation]      Run Keyword And Ignore Error at step verify txt_onboarding_scancard_error_subtitle due to the accessibility_id_byvalue not match and step verify txt_onboarding_prep_ndid_subtitle due to they are in separated elements which not supported yet 
    actions.Element Should Be Visible        &{txt_onboarding_prep_page_title} 
    actions.Element Should Be Visible        &{txt_onboarding_prep_ndid_title}
    Run Keyword And Ignore Error    actions.Element Should Be Visible        &{txt_onboarding_prep_ndid_subtitle}
    actions.Element Should Be Visible        &{txt_onboarding_prep_card_title}
    Run Keyword And Ignore Error    actions.Element Should Be Visible        &{txt_onboarding_prep_card_subtitle}
    actions.Element Should Be Visible        &{txt_onboarding_prep_passbook_title}
    actions.Element Should Be Visible        &{txt_onboarding_prep_passbook_subtitle}
    actions.Element Should Be Visible        &{txt_onboarding_prep_statements_title}
    actions.Element Should Be Visible        &{txt_onboarding_prep_statements_subtitle}
    actions.Element Should Be Visible        &{btn_onboarding_prep_get_started}
    actions.Element Should Be Visible        &{btn_onboarding_prep_later}

