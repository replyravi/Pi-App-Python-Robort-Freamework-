*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../locators/${PLATFORM_NAME}/markets/page_markets_detail.resource

*** Variables ***
&{btn_market_detail_place_order}    locator=${platform_btn_market_detail_place_order}    id_content=1985