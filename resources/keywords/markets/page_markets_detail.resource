*** Settings ***
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/markets/page_markets_detail.resource

*** Keywords ***
Click Place Order Button On Market Detail Page
    actions.Click Element    &{btn_market_detail_place_order}
    Wait Until Loading Finished On Page
    