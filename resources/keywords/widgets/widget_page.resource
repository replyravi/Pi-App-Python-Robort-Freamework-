*** Settings ***
Resource    ../../keywords/common/actions.resource
*** Keywords ***
Wait Until Loading Finished On Page
    Sleep  0.2
    ${is_visible} =  Run Keyword And Return Status      AppiumLibrary.Wait Until Page Contains Element     ${platform_icon_loading}    timeout=${VISIBLE_TIMEOUT}
    IF    ${is_visible} 
        Wait Until Page Does Not Contain Element        ${platform_icon_loading}    timeout=${LOADING_TIMEOUT}
    END    

Click Back Icon On Page
    AppiumLibrary.Click Element    locator=${platform_icon_page_back}

Click Area Outside On Page
    AppiumLibrary.Click Element    locator=${platform_page_touch_outside}
    Wait Until Loading Finished On Page
    
Verify Back Icon Not Displayed On Page
    AppiumLibrary.Page Should Not Contain Element    locator=${platform_icon_page_back}

Click Home Menu On Page
    AppiumLibrary.Click Element    locator=${platform_menu_home}
    Wait Until Loading Finished On Page

Click Markets Menu On Page
    AppiumLibrary.Click Element    locator=${platform_menu_markets}
    Wait Until Loading Finished On Page

Click Account Menu
    AppiumLibrary.Click Element    locator=${platform_menu_account}
    Wait Until Loading Finished On Page

Click Order Menu
    AppiumLibrary.Click Element    locator=${platform_menu_order}
    Wait Until Loading Finished On Page

Click Profile Menu
    AppiumLibrary.Click Element    locator=${platform_menu_profile}
    Wait Until Loading Finished On Page

Wait Until Bottom Sheet Displayed
    AppiumLibrary.Wait Until Page Contains Element    locator=${obj_flutter_page_scrim}  

Click Back Icon On Flutter Page
    AppiumLibrary.Click Element    ${icon_flutter_page_back}

Click Area Outside On Flutter Page
    AppiumLibrary.Click Element    ${obj_flutter_page_scrim}    

Verify Element Value By Accessibility ID Displayed
    [Arguments]    ${element_value}
    ${locator} =  Replace String    string=${accessibility_id_byvalue}    search_for=${VALUE_CONTENT}    replace_with=${element_value}
    AppiumLibrary.Element Should Be Visible    ${locator}
