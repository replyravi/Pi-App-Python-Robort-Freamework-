*** Settings ***
Resource    ../../../../configs/android.resource
Resource    ../../../locators/${PLATFORM_NAME}/widgets/widget_page.resource

*** Variables ***
${platform_txt_reset_password_creatnew_title}            ${platform_txt_page_title}
${platform_txt_reset_password_creatnew_pwdtitle}         ${APP_PACKAGE}:id/tv_password_title
${platform_input_reset_password_creatnew_pwd}            ${APP_PACKAGE}:id/et_password
${platform_icon_reset_password_creatnew_showpwd}         ${APP_PACKAGE}:id/text_input_end_icon
${platform_txt_reset_password_creatnew_confirmpwdtitle}  ${APP_PACKAGE}:id/tv_confirm_password_title
${platform_input_reset_password_creatnew_confirmpwd}     ${APP_PACKAGE}:id/et_confirm_password
${platform_txt_reset_password_creatnew_ruletitle}        ${APP_PACKAGE}:id/tv_password_rules_title
${platform_chkbox_reset_password_creatnew_rule_8chars}   ${APP_PACKAGE}:id/cb_rule1
${platform_chkbox_reset_password_creatnew_rule_1upper}    ${APP_PACKAGE}:id/cb_rule2
${platform_chkbox_reset_password_creatnew_rule_1lower}    ${APP_PACKAGE}:id/cb_rule3
${platform_chkbox_reset_password_creatnew_rule_1number}   ${APP_PACKAGE}:id/cb_rule4
${platform_chkbox_reset_password_creatnew_rule_1special}  ${APP_PACKAGE}:id/cb_rule5
${platform_chkbox_reset_password_creatnew_rule_matched}   ${APP_PACKAGE}:id/cb_rule6
${platform_btn_reset_password_creatnew_finish}            ${APP_PACKAGE}:id/finish_button