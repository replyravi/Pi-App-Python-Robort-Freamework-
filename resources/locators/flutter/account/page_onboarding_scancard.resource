*** Settings ***
Resource    ../../flutter/widgets/widget_page.resource

*** Variables ***
&{txt_onboarding_scancard_page_title}       locator=${accessibility_id_byvalue}    id_content=2711
&{txt_onboarding_scancard_page_subtitle}    locator=${accessibility_id_byvalue}    id_content=2712
&{btn_onboarding_scancard_take_photo}       locator=${accessibility_id_byvalue}    id_content=2713

&{txt_onboarding_scancard_error_title}      locator=${accessibility_id_byvalue}    id_content=2714
&{txt_onboarding_scancard_error_subtitle}   locator=${accessibility_id_byvalue}    id_content=2715
&{btn_onboarding_scancard_try_again}        locator=${accessibility_id_byvalue}    id_content=2716

