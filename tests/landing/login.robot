*** Settings ***
Resource    ../../configs/default.resource
Resource    ../../resources/keywords/common/actions.resource
Resource    ../../resources/keywords/profile/page_profile.resource
# Resource    ../../resources/keywords/account/page_account.resource

Test Setup       Open Pi Securities Application
Test Teardown    Close Pi Securities Application

*** Test Cases ***
Login With Email & Logout Success For Guest Account
  [Tags]  login  regression  guest
    Submit Login With Username And Password    username=${USER_GUEST_ACCOUNT}[email]   password=${USER_GUEST_ACCOUNT}[password]
    Verify Home Page Displayed
    Logout
    Verify Login Page Displayed

Login With Cust Code & Logout Success For Trade Account
  [Tags]  login  regression  trade
    Submit Login With Username And Password    username=${USER_TRADE_ACCOUNT}[cust_code]   password=${USER_TRADE_ACCOUNT}[password]
    Verify Home Page Displayed
    Logout    ${USER_TRADE_ACCOUNT}[email]
    Verify Login Page Displayed

Login With Invalid Email
  [Tags]  login  regression
    Submit Login With Username And Password    username=${USER_INVALID_ACCOUNT}[email]     password=${USER_GUEST_ACCOUNT}[password]
    Verify Login Incorrect Username Or Password Bottom Sheet Displayed

Login With Invalid Cust Code
  [Tags]  login  regression
    Submit Login With Username And Password    username=${USER_INVALID_ACCOUNT}[cust_code]     password=${USER_GUEST_ACCOUNT}[password]
    Verify Login Username Hint Text Displayed

Login With Invalid Password
  [Tags]  login  regression
    Submit Login With Username And Password    username=${USER_GUEST_ACCOUNT}[email]   password=${USER_INVALID_ACCOUNT}[password]
    Verify Login Incorrect Username Or Password Bottom Sheet Displayed

Login UI & App Contents
  [Tags]  login  regression
    Verify App Contents On Login Page
    Click Login Button
    Verify Login Username And Password Are Required Hint Text Displayed

