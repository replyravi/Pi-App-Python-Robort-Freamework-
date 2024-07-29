*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../../resources/locators/${PLATFORM_NAME}/landing/page_signup_terms_conditions.resource

*** Variables ***
&{btn_signup_terms_scroll_down}     locator=${platform_btn_signup_terms_scroll_down}     id_content=3057
&{checkbox_signup_terms_condition}  locator=${platform_checkbox_signup_terms_condition}  id_content=2693
&{checkbox_signup_terms_PDPA}       locator=${platform_checkbox_signup_terms_PDPA}       id_content=2694
&{checkbox_signup_terms_FATCA}      locator=${platform_checkbox_signup_terms_FATCA}      id_content=2656
&{checkbox_signup_terms_marketing}  locator=${platform_checkbox_signup_terms_marketing}  id_content=2695
&{btn_signup_terms_confirm}         locator=${platform_btn_signup_terms_confirm}         id_content=2696
&{txt_signup_terms_title}           locator=${platform_txt_signup_terms_title}           id_content=2692
