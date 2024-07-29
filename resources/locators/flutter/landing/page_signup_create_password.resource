*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../../resources/locators/${PLATFORM_NAME}/landing/page_signup_create_password.resource
*** Variables ***
&{txt_signup_create_password_title}        locator=${platform_txt_signup_create_password_title}    id_content=2698
&{input_signup_create_password}            locator=${platform_input_signup_create_password}        id_content=2699
&{input_signup_create_password_confirm}    locator=${platform_input_signup_create_password_confirm}        id_content=2700
&{btn_signup_create_password_confirm}      locator=${platform_btn_signup_create_password_confirm}  id_content=2706

&{txt_signup_create_password_condition_8_chars}    locator=${platform_txt_signup_create_password_condition}    id_content=2701
&{txt_signup_create_password_condition_1_upper}    locator=${platform_txt_signup_create_password_condition}    id_content=2702
&{txt_signup_create_password_condition_1_lower}    locator=${platform_txt_signup_create_password_condition}    id_content=2703
&{txt_signup_create_password_condition_1_number}    locator=${platform_txt_signup_create_password_condition}   id_content=2704
&{txt_signup_create_password_condition_1_special}    locator=${platform_txt_signup_create_password_condition}  id_content=2717
&{txt_signup_create_password_condition_matched}    locator=${platform_txt_signup_create_password_condition}    id_content=2705

&{icon_signup_create_password_condition_8_chars_checked}    locator=${platform_icon_signup_create_password_condition_checked}    id_content=2701
&{icon_signup_create_password_condition_1_upper_checked}    locator=${platform_icon_signup_create_password_condition_checked}    id_content=2702
&{icon_signup_create_password_condition_1_lower_checked}    locator=${platform_icon_signup_create_password_condition_checked}    id_content=2703
&{icon_signup_create_password_condition_1_number_checked}   locator=${platform_icon_signup_create_password_condition_checked}    id_content=2704
&{icon_signup_create_password_condition_1_special_checked}  locator=${platform_icon_signup_create_password_condition_checked}    id_content=2717
&{icon_signup_create_password_condition_matched_checked}    locator=${platform_icon_signup_create_password_condition_checked}    id_content=2705
