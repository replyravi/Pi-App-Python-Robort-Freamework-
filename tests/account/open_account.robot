*** Settings ***
Resource    ../../configs/default.resource
Resource    ../../constants/data/test_data.${ENV}.resource
Resource    ../../resources/keywords/common/actions.resource
Resource    ../../resources/keywords/profile/page_profile.resource
Resource    ../../resources/keywords/account/widget_open_account.resource
Resource    ../../resources/keywords/account/page_onboarding_preparation.resource
Resource    ../../resources/keywords/markets/page_markets.resource

Test Setup       Open Pi Securities Application And Login As Guest
Test Teardown    Close Pi Securities Application

*** Test Cases ***
Open Account App Contents
  [Tags]  account  guest  regression
    Verify App Contents On Open Account Widget
    Click Open Account Button On Open Account Widget
    Verify App Contents On Open Account Bottom Sheet
    Click Maybe Later Button On Open Account Bottom Sheet
    Verify Home Page Displayed
    Click Profile Menu
    Verify Open Account Elements Displayed
    
Open Account Modal Displayed On Home Page
  [Tags]  account  guest  regression
    Verify Open Account Widget Displayed
    Click Open Account Button On Open Account Widget
    Click Open Account Button On Open Account Bottom Sheet
    Verify Onboarding Preparation Page Displayed

Open Account Modal Displayed On SET Global Mutual Fund Markets Page
  [Tags]  account  guest  regression
    Click Markets Menu On Page
    Verify Open Account Widget Not Displayed
    Verify Open Account Modal Displayed When Placed Order On    &{tab_markets_set}
    # Verify Open Account Modal Displayed When Placed Order On    &{tab_markets_global}
    Verify Open Account Modal Displayed When Placed Order On    &{tab_markets_mfund}

Open Account Modal Displayed On Account Page
  [Tags]  account  guest  regression
    Click Account Menu
    Verify Open Account Bottom Sheet Displayed
    Click Maybe Later Button On Open Account Bottom Sheet
    Verify Home Page Displayed

Open Account Modal Displayed On Order Page
  [Tags]  account  guest  regression
    Click Order Menu
    Verify Open Account Bottom Sheet Displayed
    Click Open Account Button On Open Account Bottom Sheet
    Verify Onboarding Preparation Page Displayed

Open Account Modal Displayed On Profile Page
  [Tags]  account  guest  regression
    Click Profile Menu
    Verify Open Account Elements Displayed
    Click Open Account Button On Open Account Profile Page
    Verify Open Account Bottom Sheet Displayed And Click Maybe Later Button
    Verify Profile Page Displayed
    Click Open Account Button On Open Account Profile Page
    Click Open Account Button On Open Account Bottom Sheet
    Verify Onboarding Preparation Page Displayed
    