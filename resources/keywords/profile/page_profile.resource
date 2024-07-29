*** Settings ***
Resource    ../../../configs/default.resource
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/profile/page_profile.resource
Resource    ../../locators/flutter/account/widget_open_account.resource
*** Keywords ***
Logout
    [Arguments]    ${email}=${EMPTY}
    Click Profile Menu
    IF  "${email}" == "${EMPTY}"
        actions.Element Should Be Visible    &{btn_open_account}
    ELSE
        Verify Element Value By Accessibility ID Displayed   ${email}
    END    
    actions.Click Element  &{btn_profile_logout}
    actions.Click Element  &{btn_modal_logout_confirm}
    Wait Until Loading Finished On Page

Verify Profile Page Displayed
    actions.Element Should Be Visible    &{btn_profile_logout}
