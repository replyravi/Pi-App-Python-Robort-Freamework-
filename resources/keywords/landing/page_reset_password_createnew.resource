*** Settings ***
Resource    ../../keywords/common/actions.resource
Resource    ../../locators/flutter/landing/page_reset_password_craetenew.resource

*** Keywords ***
Verify Reset Password Create New Password Page Displayed
    actions.Verify Text Element App Translation    &{txt_reset_password_creatnew_title} 

Submit Create New Password On Reset Password Create New Password Page 
    [Arguments]     ${password}
    actions.Input Text  text=${password}    &{input_reset_password_creatnew_pwd} 
    actions.Input Text  text=${password}    &{input_reset_password_creatnew_confirmpwd} 
    actions.Element Should Be Checked       &{chkbox_reset_password_creatnew_rule_matched}
    actions.Element Should Be Enabled       &{btn_reset_password_creatnew_finish}
    actions.Click Element    &{btn_reset_password_creatnew_finish}
    Wait Until Loading Finished On Page
    
Verify All Done Please Login Again Bottom Sheet Displayed
    actions.Verify Text Element App Translation    &{txt_reset_password_creatnew_alldonetitle}
    actions.Verify Text Element App Translation    &{btn_reset_password_creatnew_backtologin}

Click Back To Login Button On All Done Please Login Again Bottom Sheet
    actions.Click Element    &{btn_reset_password_creatnew_backtologin}

Verify App Contents On Reset Password Create New Password Page 
    actions.Verify Text Element App Translation    &{txt_reset_password_creatnew_title}
    actions.Verify Text Element App Translation    &{txt_reset_password_creatnew_title}
    actions.Verify Text Element App Translation    &{txt_reset_password_creatnew_pwdtitle}
    actions.Verify Text Element App Translation    &{txt_reset_password_creatnew_confirmpwdtitle}
    actions.Verify Text Element App Translation    &{txt_reset_password_creatnew_ruletitle}
    actions.Verify Text Element App Translation    &{chkbox_reset_password_creatnew_rule_8chars}
    actions.Verify Text Element App Translation    &{chkbox_reset_password_creatnew_rule_1upper}
    actions.Verify Text Element App Translation    &{chkbox_reset_password_creatnew_rule_1lower}
    actions.Verify Text Element App Translation    &{chkbox_reset_password_creatnew_rule_1number}
    actions.Verify Text Element App Translation    &{chkbox_reset_password_creatnew_rule_1special}
    actions.Verify Text Element App Translation    &{chkbox_reset_password_creatnew_rule_matched}
    actions.Verify Text Element App Translation    &{btn_reset_password_creatnew_finish}

Verify Confirm Button Disabled On Reset Password Create New Password Page 
    actions.Element Should Be Disabled    &{btn_reset_password_creatnew_finish}

Verify All Conditions Not Checked On Reset Password Create New Password Page 
    actions.Element Should Be Unchecked    &{chkbox_reset_password_creatnew_rule_8chars}
    actions.Element Should Be Unchecked    &{chkbox_reset_password_creatnew_rule_1upper}
    actions.Element Should Be Unchecked    &{chkbox_reset_password_creatnew_rule_1lower}
    actions.Element Should Be Unchecked    &{chkbox_reset_password_creatnew_rule_1number}
    actions.Element Should Be Unchecked    &{chkbox_reset_password_creatnew_rule_1special}
    actions.Element Should Be Unchecked    &{chkbox_reset_password_creatnew_rule_matched}

Verify All Conditions Checked On Reset Password Create New Password Page 
    actions.Element Should Be Checked    &{chkbox_reset_password_creatnew_rule_8chars}
    actions.Element Should Be Checked    &{chkbox_reset_password_creatnew_rule_1upper}
    actions.Element Should Be Checked    &{chkbox_reset_password_creatnew_rule_1lower}
    actions.Element Should Be Checked    &{chkbox_reset_password_creatnew_rule_1number}
    actions.Element Should Be Checked    &{chkbox_reset_password_creatnew_rule_1special}
    actions.Element Should Be Checked    &{chkbox_reset_password_creatnew_rule_matched}

Verify Conditions Checked On Reset Password Create New Password Page 
    ${password} =  Set Variable    123456$Pi
    actions.Click Element    &{icon_reset_password_creatnew_showpwd}
    actions.Input Text  text=${password}[0:6]    &{input_reset_password_creatnew_pwd} 
    actions.Element Should Be Unchecked    &{chkbox_reset_password_creatnew_rule_8chars}
    actions.Element Should Be Unchecked    &{chkbox_reset_password_creatnew_rule_1upper}
    actions.Element Should Be Unchecked    &{chkbox_reset_password_creatnew_rule_1lower}
    actions.Element Should Be Checked      &{chkbox_reset_password_creatnew_rule_1number}
    actions.Element Should Be Unchecked    &{chkbox_reset_password_creatnew_rule_1special}
    actions.Element Should Be Unchecked    &{chkbox_reset_password_creatnew_rule_matched}

    actions.Input Text  text=${password}[6:7]    &{input_reset_password_creatnew_pwd} 
    actions.Element Should Be Unchecked    &{chkbox_reset_password_creatnew_rule_8chars}
    actions.Element Should Be Unchecked    &{chkbox_reset_password_creatnew_rule_1upper}
    actions.Element Should Be Unchecked    &{chkbox_reset_password_creatnew_rule_1lower}
    actions.Element Should Be Checked      &{chkbox_reset_password_creatnew_rule_1number}
    actions.Element Should Be Checked      &{chkbox_reset_password_creatnew_rule_1special}
    actions.Element Should Be Unchecked    &{chkbox_reset_password_creatnew_rule_matched}

    actions.Input Text  text=${password}[7:]    &{input_reset_password_creatnew_pwd} 
    actions.Element Should Be Checked    &{chkbox_reset_password_creatnew_rule_8chars}
    actions.Element Should Be Checked    &{chkbox_reset_password_creatnew_rule_1upper}
    actions.Element Should Be Checked    &{chkbox_reset_password_creatnew_rule_1lower}
    actions.Element Should Be Checked    &{chkbox_reset_password_creatnew_rule_1number}
    actions.Element Should Be Checked    &{chkbox_reset_password_creatnew_rule_1special}
    actions.Element Should Be Unchecked  &{chkbox_reset_password_creatnew_rule_matched}

    actions.Input Text  text=${password}    &{input_reset_password_creatnew_confirmpwd} 
    Verify All Conditions Checked On Reset Password Create New Password Page
    actions.Element Should Be Enabled    &{btn_reset_password_creatnew_finish}
    
    actions.Input Text  text=notMatched    &{input_reset_password_creatnew_confirmpwd} 
    actions.Element Should Be Unchecked    &{chkbox_reset_password_creatnew_rule_matched}
    actions.Element Should Be Disabled    &{btn_reset_password_creatnew_finish}
