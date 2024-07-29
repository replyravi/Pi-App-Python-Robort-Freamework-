*** Settings ***
Resource    ../../../../configs/android.resource
Resource    ../../../locators/${PLATFORM_NAME}/landing/page_reset_password_otp.resource
Resource    ../../../locators/${PLATFORM_NAME}/widgets/widget_modal.resource

*** Variables ***
&{txt_reset_password_otp_title}         locator=${platform_txt_reset_password_otp_title}           id_content=28
&{txt_reset_password_otp_email_title}   locator=${platform_txt_reset_password_otp_email_title}     id_content=22 
&{input_reset_password_otp_email}            locator=${platform_input_reset_password_otp_email}
&{btn_reset_password_otp_email_resetcode}    locator=${platform_btn_reset_password_otp_email_resetcode}  id_content=32 
&{txt_reset_password_otp_phone_title}        locator=${platform_txt_reset_password_otp_phone_title}      id_content=23 
&{input_reset_password_otp_phone}            locator=${platform_input_reset_password_otp_phone} 
&{btn_reset_password_otp_phone_resetcode}    locator=${platform_btn_reset_password_otp_phone_resetcode}  id_content=32 
&{txt_reset_password_otp_email_inputtitle}  locator=${platform_txt_reset_password_otp_inputtitle}   id_content=36
&{txt_reset_password_otp_phone_inputtitle}  locator=${platform_txt_reset_password_otp_inputtitle}   id_content=33
&{input_reset_password_otp}             locator=${platform_input_reset_password_otp}
&{btn_reset_password_otp_resend}        locator=${platform_btn_reset_password_otp_resend}    id_content=34
&{txt_reset_password_otp_timerexpired}  locator=${platform_txt_reset_password_otp_timer}     id_content=496
&{btn_reset_password_otp_continue}      locator=${platform_btn_reset_password_otp_continue}  id_content=77
&{txt_reset_password_otp_expired_title}       locator=${platform_txt_modal_title}            id_content=85
&{txt_reset_password_otp_expired_email_subtitle}    locator=${platform_txt_modal_message}    id_content=84
&{txt_reset_password_otp_expired_phone_subtitle}    locator=${platform_txt_modal_message}    id_content=81
&{btn_reset_password_otp_expired_continue}          locator=${platform_btn_modal_confirm}    id_content=86
&{txt_reset_password_otp_tryagain}    locator=${platform_txt_reset_password_otp_tryagain}    id_content=55
&{txt_reset_password_otp_limits_title}       locator=${platform_txt_modal_title}             id_content=88
&{txt_reset_password_otp_limits_subtitle}    locator=${platform_txt_modal_message}           id_content=90
&{btn_reset_password_otp_limits_continue}    locator=${platform_btn_modal_confirm}           id_content=86
