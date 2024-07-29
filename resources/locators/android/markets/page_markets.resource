*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../../configs/android.resource

*** Variables ***
${platform_tab_markets}           xpath=//android.widget.HorizontalScrollView/android.widget.LinearLayout/android.widget.LinearLayout
${platform_cards_markets}         xpath=//*[contains(@resource-id,"layoutCardDescription")]
${platform_row_markets_data_1}    xpath=//*[contains(@resource-id,"rvCategoryVenue")]/android.view.ViewGroup[1]
${platform_tab_markets_title}     xpath=//*[contains(@resource-id,"tvTitle") and @text="${VALUE_CONTENT}"]
${platform_tab_markets_pi}        ${APP_PACKAGE}:id/ivIcon