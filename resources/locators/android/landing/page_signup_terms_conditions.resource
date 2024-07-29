*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../locators/${PLATFORM_NAME}/widgets/widget_page.resource
*** Variables ***
${platform_btn_signup_terms_scroll_down}     ${APP_PACKAGE}:id/btnScrollToBottom
${platform_checkbox_signup_terms_condition}  ${APP_PACKAGE}:id/checkBoxTermsCondition
${platform_checkbox_signup_terms_PDPA}       ${APP_PACKAGE}:id/checkBoxPDPA
${platform_checkbox_signup_terms_FATCA}      ${APP_PACKAGE}:id/checkBoxFATCA
${platform_checkbox_signup_terms_marketing}  ${APP_PACKAGE}:id/checkBoxMarketing
${platform_btn_signup_terms_confirm}         ${APP_PACKAGE}:id/btnConfirm
${platform_txt_signup_terms_title}           ${platform_txt_page_title}
