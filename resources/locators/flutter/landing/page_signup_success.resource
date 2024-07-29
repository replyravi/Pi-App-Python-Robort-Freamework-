*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../locators/${PLATFORM_NAME}/landing/page_signup_success.resource

*** Variables ***
&{icon_signup_success}              locator=${platform_icon_signup_success}
&{txt_signup_success_title}         locator=${platformtxt_signup_success_title}    id_content=2707
&{txt_signup_success_message}       locator=${platformtxt_signup_success_message}  id_content=2708	
&{btn_signup_success_open_account}  locator=${platformbtn_signup_success_open_account}  id_content=2709
&{btn_signup_success_try_the_app}   locator=${platformbtn_signup_success_try_the_app}  id_content=2710