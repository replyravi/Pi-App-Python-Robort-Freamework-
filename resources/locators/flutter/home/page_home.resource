*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../locators/${PLATFORM_NAME}/home/page_home.resource

*** Variables ***
&{obj_home}           locator=${platform_obj_home} 
