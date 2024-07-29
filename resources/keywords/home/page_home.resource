*** Settings ***
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/home/page_home.resource
Resource    ../../keywords/widgets/widget_announcement.resource
*** Keywords ***
Verify Home Page Displayed
    Wait Until Loading Finished On Page
    Click Button Got It If Announcement Pop Up
    actions.Wait Until Page Contains Element   &{obj_home}