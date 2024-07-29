*** Settings ***
Resource    ../../../../configs/android.resource
Resource    ../../../locators/${PLATFORM_NAME}/landing/page_reset_password_createnew.resource
Resource    ../../../locators/${PLATFORM_NAME}/widgets/widget_modal.resource 

*** Variables ***
&{txt_reset_password_creatnew_title}             locator=${platform_txt_reset_password_creatnew_title}            id_content=37
&{txt_reset_password_creatnew_pwdtitle}          locator=${platform_txt_reset_password_creatnew_pwdtitle}         id_content=50
&{input_reset_password_creatnew_pwd}             locator=${platform_input_reset_password_creatnew_pwd}
&{icon_reset_password_creatnew_showpwd}          locator=${platform_icon_reset_password_creatnew_showpwd}
&{txt_reset_password_creatnew_confirmpwdtitle}   locator=${platform_txt_reset_password_creatnew_confirmpwdtitle}  id_content=39
&{input_reset_password_creatnew_confirmpwd}      locator=${platform_input_reset_password_creatnew_confirmpwd}
&{txt_reset_password_creatnew_ruletitle}          locator=${platform_txt_reset_password_creatnew_ruletitle}        id_content=40
&{chkbox_reset_password_creatnew_rule_8chars}    locator=${platform_chkbox_reset_password_creatnew_rule_8chars}   id_content=41
&{chkbox_reset_password_creatnew_rule_1upper}    locator=${platform_chkbox_reset_password_creatnew_rule_1upper}   id_content=42
&{chkbox_reset_password_creatnew_rule_1lower}    locator=${platform_chkbox_reset_password_creatnew_rule_1lower}   id_content=43
&{chkbox_reset_password_creatnew_rule_1number}   locator=${platform_chkbox_reset_password_creatnew_rule_1number}  id_content=44
&{chkbox_reset_password_creatnew_rule_1special}  locator=${platform_chkbox_reset_password_creatnew_rule_1special}  id_content=45
&{chkbox_reset_password_creatnew_rule_matched}   locator=${platform_chkbox_reset_password_creatnew_rule_matched}   id_content=46
&{btn_reset_password_creatnew_finish}            locator=${platform_btn_reset_password_creatnew_finish}            id_content=47

&{txt_reset_password_creatnew_alldonetitle}      locator=${platform_txt_modal_title}        id_content=48
&{btn_reset_password_creatnew_backtologin}       locator=${platform_btn_modal_confirm}      id_content=49
