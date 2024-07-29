*** Settings ***
Resource    ../../../../configs/android.resource

*** Variables ***
${platform_menu_home}        xpath=//android.widget.GridView[@resource-id="${APP_PACKAGE}:id/dashboardBottomNavigationBar"]/android.view.ViewGroup[1]
${platform_menu_markets}     xpath=//android.widget.GridView[@resource-id="${APP_PACKAGE}:id/dashboardBottomNavigationBar"]/android.view.ViewGroup[2]
${platform_menu_account}     xpath=//android.widget.GridView[@resource-id="${APP_PACKAGE}:id/dashboardBottomNavigationBar"]/android.view.ViewGroup[3]
${platform_menu_order}       xpath=//android.widget.GridView[@resource-id="${APP_PACKAGE}:id/dashboardBottomNavigationBar"]/android.view.ViewGroup[4]
${platform_menu_profile}     xpath=//android.widget.GridView[@resource-id="${APP_PACKAGE}:id/dashboardBottomNavigationBar"]/android.view.ViewGroup[5]

${platform_txt_page_title}      ${APP_PACKAGE}:id/tvTitle
${platform_txt_page_subtitle}   ${APP_PACKAGE}:id/tvSubTitle
${platform_icon_page_back}      xpath=//android.widget.ImageView[contains (@resource-id,"Back")]
${platform_icon_fluter_page_back}      xpath=//android.widget.ImageView
${platform_txt_page_value}      ${APP_PACKAGE}:id/tvValue
${platform_txt_page_error}      ${APP_PACKAGE}:id/tvError
${platform_page_touch_outside}  ${APP_PACKAGE}:id/touch_outside
${platform_icon_loading}        ${APP_PACKAGE}:id/lottie	

