*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../../configs/android.resource
Resource    ../../../locators/${PLATFORM_NAME}/widgets/widget_page.resource

*** Variables ***
${platform_txt_signup_create_password_title}         xpath=//*[@resource-id="${platform_txt_page_title}" and @text="${VALUE_CONTENT}"]
${platform_input_signup_create_password}             xpath=//*[@resource-id="${APP_PACKAGE}:id/inputPassword"]//android.widget.EditText
${platform_input_signup_create_password_confirm}     xpath=//*[@resource-id="${APP_PACKAGE}:id/inputConfirmPassword"]//android.widget.EditText
${platform_btn_signup_create_password_confirm}    	 ${APP_PACKAGE}:id/btnConfirm
${platform_txt_signup_create_password_condition}     xpath=//*[@resource-id="${APP_PACKAGE}:id/tvCondition" and @text="${VALUE_CONTENT}"]
${platform_icon_signup_create_password_condition_checked}  xpath=//*[@resource-id="${APP_PACKAGE}:id/tvCondition" and @text="${VALUE_CONTENT}"]/preceding-sibling::*[@resource-id="${APP_PACKAGE}:id/ivCheck"]