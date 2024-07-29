*** Settings ***
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/widgets/widget_announcement.resource

*** Keywords ***
Click Button Got It If Announcement Pop Up
    actions.Click Element If Visible    &{btn_announcement_got_it} 
