*** Settings ***
Resource    ../../../configs/default.resource
Resource    ../../../configs/timeout.resource
Resource    ../../../constants/data/test_data.${ENV}.resource
Resource    ../../keywords/common/actions_${PLATFORM_NAME}.resource
Resource    ../../keywords/landing/page_login.resource
Resource    ../../keywords/home/page_home.resource

Library    JSONLibrary
Library    String
*** Variables ***
${regx_pattern_for_remove}  ( \\t|<b>|<\/b>|<\/link>|<link href='tel:[^']*'>)
${short_dash}       -
${long_dash}        –
*** Keywords ***
Open Pi Securities Application
    Set Appium Timeout    seconds=${OPEN_APP_TIMEOUT}
    TRY
        Open App
        
    EXCEPT
        Sleep  ${VISIBLE_TIMEOUT}
        Open App
    END
    Set Appium Timeout    seconds=${ACTION_TIMEOUT}

Open Pi Securities Application And Login As Guest
    Open Pi Securities Application
    Submit Login With Username And Password    username=${USER_GUEST_ACCOUNT}[email]   password=${USER_GUEST_ACCOUNT}[password]
    Verify Home Page Displayed

Activate Pi Securities Application 
    Activate App

Close Pi Securities Application
    Close Application

Terminate Pi Securities Application
    Terminate App

Get Random Mobile Number and Email
    ${random_mobile_number} =  Generate Random String  8  [NUMBERS]
    ${random_email}=   Set Variable    06${random_mobile_number}@automation.com
    ${result}=    Create Dictionary    mobile_number=06${random_mobile_number}    email=${random_email}
    [Return]    ${result}

Get Random New Password
    ${random_number} =  Generate Random String  6  [NUMBERS]
    ${random_password} =   Set Variable    Pi@${random_number}
    [Return]    ${random_password}

Verify Text Element App Translation
    [Arguments]    &{element}
    ${locator} =  Get App Locator From Id Content  &{element}
    AppiumLibrary.Wait Until Page Contains Element    ${locator}    timeout=${VISIBLE_TIMEOUT}
    ${txt_translate} =  Get Text App Translations    &{element}
    ${txt_element} =  Get Text    ${locator}
    # IF  "${long_dash}" in "${txt_element}"
    #     ${txt_translate} =  Replace String  string=${txt_translate}    search_for=${short_dash}    replace_with=${long_dash}
    # END
    AppiumLibrary.Element Text Should Be    locator=${locator}     expected=${txt_translate}

Verify Text Element App Translation Replace With
    [Arguments]    ${txt_replacement}        &{element}
    ${locator} =  Get App Locator From Id Content  &{element}
    AppiumLibrary.Wait Until Page Contains Element    ${locator}    timeout=${VISIBLE_TIMEOUT}
    ${txt_translate} =  Get Text App Translations    &{element}
    ${txt_translate_with_replacement} =  Replace String    string=${txt_translate}    search_for={0}    replace_with=${txt_replacement}
    AppiumLibrary.Element Text Should Be    locator=${locator}     expected=${txt_translate_with_replacement}

Verify Element Text Should Be
    [Arguments]    ${txt_expected}    &{element}
    ${locator} =  Get App Locator From Id Content  &{element}
    AppiumLibrary.Wait Until Page Contains Element    ${locator}    timeout=${VISIBLE_TIMEOUT}
    AppiumLibrary.Element Text Should Be    locator=${locator}     expected=${txt_expected}

Get App Locator From Id Content
    [Arguments]    &{element}
    ${is_contain} =    Run Keyword And Return Status    Should Contain    ${element}[locator]    ${VALUE_CONTENT}
    IF  "${is_contain}" == "True"
    ${locator} =  Get Element Locator App Translation   &{element}
    ELSE
    ${locator} =  Set Variable  ${element}[locator]
    END
    [Return]  ${locator}

Get Text Translation From File
    [Arguments]    ${source_file}   ${id_translation}   ${id_translation_replacement}=${NONE}
    ${LANG_CODE} =	Set Variable If	"${{'${LANGUAGE}'.upper()}}" == "TH"  "th-TH"  "en-US"
    ${json} =  Load Json From File    ${CURDIR}/../../../constants/translate/${source_file}.${ENV}.json
    ${translation} =  Get Value From Json    ${json}    $[?(@.id==${id_translation} )].translations[?(@.languages_code=${LANG_CODE})].value
    IF  ${id_translation_replacement}!=${NONE}
        ${translation_for_replacement} =  Get Value From Json    ${json}    $[?(@.id==${id_translation_replacement})].translations[?(@.languages_code=${LANG_CODE})].value
        ${translation}[0] =  Replace String  string=${translation}[0]  search_for={0}  replace_with=${translation_for_replacement}[0]
    END
    ${translation}[0] =  Replace String Using Regexp  string=${translation}[0]  pattern=${regx_pattern_for_remove}  replace_with=${EMPTY}
    ${translation}[0] =  Replace String Using Regexp  string=${translation}[0]  pattern=(${SPACE}${SPACE}<br>|${SPACE}<br>${SPACE}|${SPACE}<br>|${SPACE}<br>\\n)    replace_with=${SPACE}\\n
    [Return]  ${translation}[0]

Get Element Locator App Translation
    [Arguments]    &{element}
    ${txt_trans} =  Get Text App Translations    &{element} 
    ${locator} =  Replace String  string=${element}[locator]   search_for=${VALUE_CONTENT}   replace_with=${txt_trans}   count=1
    [Return]  ${locator}

Get Text App Translations
    [Arguments]    &{element}
    ${matches} =   Get Regexp Matches  string=${element}[id_content]  pattern=\\d+
    ${matches_length} =  Get Length  ${matches}
    IF  ${matches_length}==1
       ${txt_trans} =  Get Text Translation From File  ${SOURCE_APP_CONTENTS}     ${matches}[0]      
    ELSE
       ${txt_trans} =  Get Text Translation From File  ${SOURCE_APP_CONTENTS}     ${matches}[0]    ${matches}[1]
    END   
    [Return]  ${txt_trans}

Click Element At Position Right
    [Arguments]    &{element}
    ${locator} =  Get App Locator From Id Content  &{element} 
    AppiumLibrary.Wait Until Page Contains Element    ${locator}    timeout=${VISIBLE_TIMEOUT}
    ${element_rect} =  Get Element Rect    ${locator}
    ${x} =  Evaluate    ${element_rect['x']} + (${element_rect['width']} * 0.65)
    ${y} =  Evaluate   ${element_rect['y']} + (${element_rect['height']} / 2)
    ${position} =  Create List    ${x}    ${y}
    Tap With Positions   ${300}  ${position}

Click Element At Position Left
    [Arguments]    &{element}  
    ${locator} =  Get App Locator From Id Content  &{element}
    AppiumLibrary.Wait Until Page Contains Element    ${locator}    timeout=${VISIBLE_TIMEOUT}
    ${element_rect} =  Get Element Rect    ${locator}
    ${x} =  Evaluate   ${element_rect['x']} + (${element_rect['width']} * 0.025)
    ${y} =  Evaluate   ${element_rect['y']} + (${element_rect['height']} * 0.011)
    ${position} =  Create List    ${x}    ${y}
    Tap With Positions   ${300}  ${position}

Click Element If Visible
    [Arguments]    &{element}  
    ${locator} =  Get App Locator From Id Content  &{element}
    Sleep    ${TINY_TIMEOUT}
    ${is_visible} =  Run Keyword And Return Status      AppiumLibrary.Wait Until Page Contains Element     ${locator}  ${VISIBLE_TIMEOUT}
    Run Keyword If      "${is_visible}" == "True"    AppiumLibrary.Click Element    ${locator} 

Input Text If Visible
    [Arguments]    ${text}    &{element}    
    ${locator} =  Get App Locator From Id Content  &{element}
    ${is_visible} =  Run Keyword And Return Status      AppiumLibrary.Wait Until Page Contains Element     ${locator}  ${TINY_TIMEOUT}
    Run Keyword If      "${is_visible}" == "True"    AppiumLibrary.Input Text    locator=${locator}    text=${text}

Click Element
    [Arguments]    &{element}
    ${locator} =  Get App Locator From Id Content  &{element} 
    AppiumLibrary.Wait Until Page Contains Element    ${locator}    timeout=${VISIBLE_TIMEOUT}
    AppiumLibrary.Click Element  ${locator}

Input Text
    [Arguments]    ${text}    &{element}    
    ${locator} =  Get App Locator From Id Content  &{element}
    AppiumLibrary.Input Text    locator=${locator}    text=${text}
    Sleep    ${TINY_TIMEOUT}

Page Should Not Contain Element
    [Arguments]    &{element}    
    ${locator} =  Get App Locator From Id Content  &{element}
    AppiumLibrary.Page Should Not Contain Element    locator=${locator}

Element Should Be Visible
    [Arguments]    &{element}    
    ${locator} =  Get App Locator From Id Content  &{element}
    AppiumLibrary.Element Should Be Visible   locator=${locator}

Wait Until Page Contains Element
    [Arguments]    &{element}    
    ${locator} =  Get App Locator From Id Content  &{element}
    AppiumLibrary.Wait Until Page Contains Element   locator=${locator}    timeout=${VISIBLE_TIMEOUT}

Wait Until Element Is Visible
    [Arguments]    &{element}    
    ${locator} =  Get App Locator From Id Content  &{element} 
    AppiumLibrary.Wait Until Element Is Visible   locator=${locator}    timeout=${VISIBLE_TIMEOUT}

Element Should Be Disabled
    [Arguments]    &{element}
    ${locator} =  Get App Locator From Id Content  &{element}
    AppiumLibrary.Wait Until Page Contains Element    ${locator}    timeout=${VISIBLE_TIMEOUT}
    AppiumLibrary.Element Should Be Disabled    locator=${locator}

Element Should Be Enabled
    [Arguments]    &{element}
    ${locator} =  Get App Locator From Id Content  &{element}
    AppiumLibrary.Wait Until Page Contains Element    ${locator}    timeout=${VISIBLE_TIMEOUT}
    AppiumLibrary.Element Should Be Enabled   locator=${locator}

Element Should Be Checked
    [Arguments]    &{element}
    ${locator} =  Get App Locator From Id Content  &{element}
    AppiumLibrary.Wait Until Page Contains Element    ${locator}    timeout=${VISIBLE_TIMEOUT}
    AppiumLibrary.Element Attribute Should Match    locator=${locator}    attr_name=checked    match_pattern=true

Element Should Be Unchecked
    [Arguments]    &{element}
    ${locator} =  Get App Locator From Id Content  &{element}
    AppiumLibrary.Wait Until Page Contains Element    ${locator}    timeout=${VISIBLE_TIMEOUT}
    AppiumLibrary.Element Attribute Should Match    locator=${locator}    attr_name=checked    match_pattern=false

Tap Number In Keyboard
    [Arguments]    ${number}
    Sleep    ${TINY_TIMEOUT}
    Tap Number In Platform Keyboard    ${number}
    Sleep    ${TINY_TIMEOUT}
