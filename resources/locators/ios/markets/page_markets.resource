*** Settings ***
Resource    ../../../../configs/default.resource

*** Variables ***
${platform_tab_markets}           xpath=(//XCUIElementTypeCollectionView)[1]//XCUIElementTypeStaticText
${platform_cards_markets}         xpath=(//XCUIElementTypeCollectionView)[2]//XCUIElementTypeStaticText    
${platform_row_markets_data_1}    xpath=//XCUIElementTypeTable/XCUIElementTypeCell[1]
${platform_tab_markets_title}     xpath=//XCUIElementTypeStaticText[@name="${VALUE_CONTENT}"]
${platform_tab_markets_pi}        accessibility_id=accicon-pi-inactive
