*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../../resources/locators/${PLATFORM_NAME}/landing/page_login.resource

*** Variables ***
&{input_login_username}            locator=${platform_input_login_username}    id_content=103
&{input_login_password}            locator=${platform_input_login_password}    id_content=125
&{btn_login_login}                 locator=${platform_btn_login_login}         id_content=97
&{linktxt_login_forgot_password}   locator=${platform_linktxt_login_forgot_password}  id_content=101
&{linktxt_login_signup}            locator=${platform_linktxt_login_signup}        id_content=2652_2665
&{txthint_login_username}          locator=${platform_txthint_login_username}      id_content=2837
&{txthint_login_password}          locator=${platform_txthint_login_password}      id_content=2900
&{icon_login_lang_en}  	           locator=${platform_icon_login_lang_en} 
&{icon_login_lang_th}  	           locator=${platform_icon_login_lang_th}  

&{txt_login_error_incorrect_title}    locator=${platform_txt_modal_title}   id_content=2838
&{txt_login_error_incorrect_message}  locator=${platform_txt_modal_message}  id_content=2839