*** Settings ***
Resource    ../../../../configs/android.resource
*** Variables ***
# any of bottom sheet, logout modal, invalid message, etc
${platform_obj_modal_bottom_sheet}    ${APP_PACKAGE}:id/design_bottom_sheet
${platform_img_modal_image}       ${APP_PACKAGE}:id/ivImage
${platform_txt_modal_title}       ${APP_PACKAGE}:id/tvTitle
${platform_txt_modal_message}     ${APP_PACKAGE}:id/tvMessage
${platform_btn_modal_confirm}     ${APP_PACKAGE}:id/btnPositive
${platform_btn_modal_later}       ${APP_PACKAGE}:id/btnNegative
