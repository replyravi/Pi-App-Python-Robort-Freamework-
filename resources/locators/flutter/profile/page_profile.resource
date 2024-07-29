*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../locators/${PLATFORM_NAME}/widgets/widget_modal.resource 
Resource    ../../../locators/flutter/widgets/widget_page.resource 
*** Variables ***
&{txt_profile_hello}         locator=${accessibility_id_byvalue}    id_content=2235
&{btn_profile_logout}        locator=${accessibility_id_byvalue}    id_content=2118
&{txt_confirm_logout_title}        locator=${accessibility_id_byvalue}    id_content=2119
&{txt_confirm_logout_subtitle}     locator=${accessibility_id_byvalue}    id_content=2120
&{btn_modal_logout_confirm}  locator=${platform_btn_modal_confirm}
&{btn_modal_logout_later}    locator=${platform_btn_modal_later}
