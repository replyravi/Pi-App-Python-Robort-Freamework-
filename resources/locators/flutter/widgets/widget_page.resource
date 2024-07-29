*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../locators/${PLATFORM_NAME}/widgets/widget_page.resource

*** Variables ***
${obj_flutter_page_scrim}   accessibility_id=Scrim
${icon_flutter_page_back}   ${platform_icon_fluter_page_back}
${xpath_hint_byvalue}       xpath=//*[@hint="${VALUE_CONTENT}"]
${accessibility_id_byvalue}        accessibility_id=${VALUE_CONTENT}
