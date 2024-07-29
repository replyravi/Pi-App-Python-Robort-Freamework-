*** Settings ***
Resource    ../../flutter/widgets/widget_page.resource
Resource    ../../../locators/${PLATFORM_NAME}/account/widget_open_account.resource
Resource    ../../../locators/${PLATFORM_NAME}/widgets/widget_modal.resource

*** Variables ***
# open account widget
&{obj_open_account}                        locator=${platform_obj_open_account}
&{txt_open_account_obj_get_start_title}    locator=${platform_txt_get_start_title}    id_content=1550
&{txt_open_account_obj_get_start_des}      locator=${platform_txt_get_start_des}      id_content=1551
&{btn_open_account_obj}                    locator=${platform_btn_open_account}       id_content=1552

# open account at profile page
&{txt_open_account_get_start_title}        locator=${accessibility_id_byvalue}   id_content=1550
&{txt_open_account_get_start_des}          locator=${accessibility_id_byvalue}   id_content=1551
&{btn_open_account}                        locator=${accessibility_id_byvalue}   id_content=1552

# open account bottom sheet
&{txt_open_acount_bottom_sheet_title}      locator=${platform_txt_modal_title}        id_content=515
&{txt_open_acount_bottom_sheet_message}    locator=${platform_txt_modal_message}      id_content=516
&{btn_open_account_bottom_sheet_confirm}    locator=${platform_btn_modal_confirm}     id_content=517
&{btn_open_account_bottom_sheet_later}      locator=${platform_btn_modal_later}       id_content=518

