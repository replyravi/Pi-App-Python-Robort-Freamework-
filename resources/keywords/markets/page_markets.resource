*** Settings ***
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/markets/page_markets.resource
Resource    ../../keywords/markets/page_markets_detail.resource
Resource    ../../keywords/account/widget_open_account.resource


*** Keywords ***
Click Market Data Row 1
    actions.Click Element    &{row_markets_data_1}
    Wait Until Loading Finished On Page

Place Order On Market Data Row 1
    Click Market Data Row 1
    Click Place Order Button On Market Detail Page

Verify Open Account Modal Displayed When Placed Order On
    [Arguments]    &{tab_markets}
    actions.Click Element    &{tab_markets}
    #  TODO Add Step for each sub market cards to be verified
    Place Order On Market Data Row 1
    Verify Open Account Bottom Sheet Displayed And Click Maybe Later Button
    Click Back Icon On Page


