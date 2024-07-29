*** Settings ***
Resource    ../../configs/default.resource
Resource    ../../constants/data/test_data.${ENV}.resource
Resource    ../../resources/keywords/common/actions.resource
Resource    ../../resources/keywords/account/widget_open_account.resource
Resource    ../../resources/keywords/account/page_onboarding_preparation.resource
Resource    ../../resources/keywords/account/page_onboarding_scancard.resource
# Resource    ../../resources/keywords/account/page_onboarding_personalinfo.resource

Test Setup       Open Pi Securities Application And Login As Guest
Test Teardown    Close Pi Securities Application

*** Test Cases ***
Onboarding UI & App Contents On Preparation Page
  [Tags]  onboarding  regression
    Open Account And Confirm On Open Account Bottom Sheet
    Verify onboarding Preparation Page Displayed
    Verify Onboarding Preparation Elements Displayed
    Verify Back Icon Not Displayed On Page
    Click Later Button On Onboarding Preparation Page
    Verify Home Page Displayed
    
Onboarding UI & App Contents On Scan ID Card Page
  [Tags]  onboarding  regression
    Open Account And Confirm On Open Account Bottom Sheet
    Click Get Started Button On Onboarding Preparation Page
    Verify Onboarding Scan ID Card Page Displayed
    Verify Onboarding Scan ID Card Elements Displayed
    Click Back Icon On Flutter Page
    Verify Onboarding Preparation Page Displayed
    
Onboarding Unable To Take Photo On Scan ID Card Page
  [Tags]  onboarding  regression
    Open Account And Confirm On Open Account Bottom Sheet
    Click Get Started Button On Onboarding Preparation Page
    Click Take Photo Button On Onboarding Scan ID Card Page
    Verify Onboarding Unable To Take Photo Bottom Sheet Displayed
    Click Try Again Button On Onboarding Unable To Take Photo Bottom Sheet
    Verify Onboarding Scan ID Card Page Displayed
