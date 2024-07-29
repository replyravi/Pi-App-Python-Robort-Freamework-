*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../locators/${PLATFORM_NAME}/widgets/widget_modal.resource
*** Variables ***
${platform_obj_login_username}              //*[@resource-id="${APP_PACKAGE}:id/inputUser"]
${platform_obj_login_password}              //*[@resource-id="${APP_PACKAGE}:id/inputPassword"]

${platform_input_login_username}            xpath=${platform_obj_login_username}//*[@resource-id="${APP_PACKAGE}:id/edt"]
${platform_input_login_password}            xpath=${platform_obj_login_password}//*[@resource-id="${APP_PACKAGE}:id/edt"]
${platform_btn_login_login}                 ${APP_PACKAGE}:id/btnLogin
${platform_linktxt_login_forgot_password}   ${APP_PACKAGE}:id/tvForgotPassword
${platform_linktxt_login_signup}            ${APP_PACKAGE}:id/tvNoAccount
${platform_txthint_login_username}          xpath=${platform_obj_login_username}//*[@resource-id="${APP_PACKAGE}:id/tvHint"]
${platform_txthint_login_password}          xpath=${platform_obj_login_password}//*[@resource-id="${APP_PACKAGE}:id/tvHint"]
${platform_icon_login_lang_en}  	        ${APP_PACKAGE}:id/tvEN
${platform_icon_login_lang_th}  	        ${APP_PACKAGE}:id/tvTH
