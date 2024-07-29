*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../../resources/locators/${PLATFORM_NAME}/landing/page_reset_password.resource


*** Variables ***
&{txt_reset_password_title}             locator=${platform_txt_reset_password_title}            id_content=28
&{txt_reset_password_subtitle}          locator=${platform_txt_reset_password_subtitle}         id_content=29
&{txt_reset_password_via_email_title}   locator=${platform_txt_reset_password_via_email_title}  id_content=30
&{txt_reset_password_via_email_value}   locator=${platform_txt_reset_password_via_email_value}
&{card_reset_password_via_phone}        locator=${platform_card_reset_password_via_phone}
&{txt_reset_password_via_phone_title}   locator=${platform_txt_reset_password_via_phone_title}  id_content=31
&{txt_reset_password_via_phone_value}   locator=${platform_txt_reset_password_via_phone_value}
&{btn_reset_password_continue}          locator=${platform_btn_reset_password_continue}         id_content=77
