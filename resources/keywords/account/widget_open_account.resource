*** Settings ***
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/account/widget_open_account.resource

*** Keywords ***
Click Open Account Button On Open Account Widget
    actions.Click Element    &{btn_open_account_obj}

Verify Open Account Widget Displayed
    actions.Element Should Be Visible    &{obj_open_account}

Verify Open Account Elements Displayed
    actions.Element Should Be Visible    &{txt_open_account_get_start_title}
    actions.Element Should Be Visible    &{txt_open_account_get_start_des}
    actions.Element Should Be Visible    &{btn_open_account}

Verify Open Account Widget Not Displayed
    actions.Page Should Not Contain Element    &{obj_open_account}

Verify App Contents On Open Account Widget
    actions.Verify Text Element App Translation    &{txt_open_account_obj_get_start_title}
#    actions.Verify Text Element App Translation    &{txt_open_account_obj_get_start_des}
    actions.Verify Text Element App Translation    &{btn_open_account_obj}

Verify Open Account Bottom Sheet Displayed
    actions.Element Should Be Visible    &{txt_open_acount_bottom_sheet_title}

Verify App Contents On Open Account Bottom Sheet
    actions.Verify Text Element App Translation    &{txt_open_acount_bottom_sheet_title}
    actions.Verify Text Element App Translation    &{txt_open_acount_bottom_sheet_message}
    actions.Verify Text Element App Translation    &{btn_open_account_bottom_sheet_confirm}
    actions.Verify Text Element App Translation    &{btn_open_account_bottom_sheet_later}

Open Account And Confirm On Open Account Bottom Sheet
    Click Open Account Button On Open Account Widget
    Click Open Account Button On Open Account Bottom Sheet

Click Open Account Button On Open Account Bottom Sheet
    actions.Click Element    &{btn_open_account_bottom_sheet_confirm}
    Wait Until Loading Finished On Page

Click Maybe Later Button On Open Account Bottom Sheet
    actions.Click Element    &{btn_open_account_bottom_sheet_later}
    Wait Until Loading Finished On Page
    
Click Open Account Button On Open Account Profile Page
    actions.Click Element    &{btn_open_account}
    Wait Until Loading Finished On Page

Verify Open Account Bottom Sheet Displayed And Click Maybe Later Button
    Verify Open Account Bottom Sheet Displayed
    Click Maybe Later Button On Open Account Bottom Sheet
