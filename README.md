<<<<<<< HEAD
# pi-app-automation using robot-framework
## Requirements
- Install Python3
- Install Node.js
- Install Appium
- Install Appium Doctor: Run `appium-doctor` command in terminal to check your system. Appium Doctor will perform various checks and provide recommendations on resolving any issues it finds.
- Install Appium UiAutomator2 Driver
- Install Java (for setting JAVA_HOME: should be exported in Terminal's config file)
- Install Android Studio (for setting ANDROID_HOME: should be exported in Terminal's config file)
  >Example: Terminal's config file\
  ![image](https://github.com/pi-financial/pi-app-automation/assets/138549667/3863071f-5b4a-43a6-a15c-0cb732cb6f7a)
- Install Appium Inspector

## To Inspect The Elements
1. Run `appium` command in terminal\
   ![Pasted Graphic 2](https://github.com/pi-financial/pi-app-automation/assets/138549667/8d928df8-1f49-4309-93cf-6a7b54d595a2)
2. Open Android studio, then select Virtual Device Manager\
   ![image](https://github.com/pi-financial/pi-app-automation/assets/138549667/af08bb16-9708-4c41-aaae-fc1734ed06a0)
3. Run an emulator from the preferred device
4. Run `adb devices` command in terminal\
   ![image](https://github.com/pi-financial/pi-app-automation/assets/138549667/2459a149-adb8-4e62-880a-6be929086434)
5. Open Appium Inspector
   - copy the host and the port that show up after running `appium` command
   - copy device setting from `adb devices` and Android Studio
     ![image](https://github.com/pi-financial/pi-app-automation/assets/138549667/6e17c480-9f76-4cac-9865-e4b5d04a05c2)
6. Once you click `Start Session`, you can now inspect the element in the mobile device\
   ![image](https://github.com/pi-financial/pi-app-automation/assets/138549667/af8028cc-2941-418d-9712-2adfc83469ca)


## To Set Up The Project
- Clone this repro and open the project in VS Code
- Select virtual env interpreter, run `python3 -m venv venv` then `source venv/bin/activate`
- Install requirements file ,run `pip install -r requirements.txt`
- Configure Visual Studio Code to Use the Virtual Environment:
Open the command palette `macOS: (Cmd+Shift+P)` and `select "Python: Select Interpreter." Choose the Python interpreter located in your venv folder.`

## About Project Structure:
-  Keyword files refers to locators/flutter file as per page
-  In locators/flutter files keep as dictionary e.g.
    - `&{btn_login_login}          locator=${platform_btn_login_login}         id_content=97`
    - `&{btn_announcement_got_it}  locator=${accessibility_id_byvalue}         id_content=501`
    - `&{linktxt_login_signup}     locator=${platform_linktxt_login_signup}    id_content=2652_2665`
        - 2652 is "Don’t have account? <b>{0}</b>", then {0} was replacing again with id 2655
-  If that page isn't flutter, the locators/flutter file refers to locators/{platform} (android/ios) 
-  locators/{platform} (android/ios) file keep locator as per platform e.g.
    - `${platform_btn_login}   ${APP_PACKAGE}:id/btnLogin`  // for android
-  `id_content` in locators/flutter files will be used for replacing `${VALUE_CONTENT}`and verify text translation as per TH/EN
- Once platform pages were updated to Fluter,  just only [locator] in locators/flutter files need to be updated then locators/{platform} (android/ios) can be deleted

## Agreements:
- file_name must be in "snake_case" as per feature i.e. `login.robot` 
- locator_parameter must be in "snake_case" and starting with the [Type Of Element: input|txt|linktxt|btn|hinttxt] [Name of Page&Module: login|signup|onboarding|forgotpassword] [Name], i.e. `&{linktxt_login_signup} &{checkbox_signup_terms_PDPA}` if the locators are under ios/android folder must be starting with `platform_` e.g. `${platform_txt_signup_create_password_title}`
- [Arguments] parameter must be in "snake_case", i.e. `${username}  ${password}  ${mobile_number}`
- Each `{feature_name}.robot` keep all test cases of the feature, they should be individual, and independent
- Add `[Tags]` feature_name, regression in the tests e.g.
    - [Tags]  signup  regression  
    - [Tags]  signup  regression  `robot:skip-on-failure`, added these tags for the test that has pending issue
- Add `[Documentation]` for a note e.g.
    - [Documentation]  This test expects to fail due to issue TES-553 just found    
    - [Documentation]  Run Keyword And Ignore Error for at step verify txt_onboarding_scancard_page_subtitle due to the accessibility_id_byvalue not match
- Naming The Keyword, Keyword must be in "Start Case"
    - Verify [App, Notifications, Policies] Contents On [Name] Page e.g. 
        - Verify App Contents On Enter Your Mobile Number Page 
    - Verify [Name] [Type Of Element: Input|Text|Link Text|Button] [Not?] [Enabled|Disabled|Displayed] [Until Something|When Something] e.g. 
        - Verify Request OTP Button Disabled Until Correct Email Format Submitted
        - Verify Back Icon Not Displayed On Page
        - Verify OTP Expired Error Text Displayed
    - Click [Name] [Type Of Element: Input|Text|Link Text|Button] On [Name] [Type Of Object: Page|Bottom Sheet|Modal]e.g.
        - Click Open Account Button On Signup Success Page
        - Click Go To Login Button On Mobile Number Already In Use Bottom Sheet    
    - Enter <>   This will led to next page e.g.
        - Enter OTP 6 Digits
    -  Input <>   This is still at the page and need to do something that will led to next page  e.g. 
        - Input House No
        - Input Email Value And Click Request OTP Button
    - Submit <> with <> and <>   This is included click on button for an action, and led to next page or next step e.g.
        - Submit Login With Username And Password

## About App Contents File For Translation
### To Add/Update App Contents File
- Export translation json file from directus system `/admin/content/app_contents` , In Export Items:
    -  Select Format=JSON, Limit={All number}
    -  Export Location = Download File
    -  Sort Field = Namespace ID
    -  Sort Direction = Sort Ascending
    -  Filter Status Equals Published
    -  Add Following Fields: ID, Namespace ID, Translation LANGUAGE CODE, Translate VALUE
- Then rename exported file to app_contents.uat.json or app_contents.prod.json as per the environment
- Replace the file at /constants/translate
- As for writing "App Contents", we check from the "app_contents file”.  Some content comes from other files, such as t&c. The more content comes from “policies", which is called another function. The function name will follow the exported file from directus system, like these. 
        actions.Verify Text Element `App` Translation, actions.Verify Text Element `Policies` Translation, actions.Verify Text Element `Notifications` Translation

## To Run The Tests
- Ensure appium server running and your device connecting, The default config set at `/configs/default.resource`
- To Execute with command:
    - Run all tests with defaults options for android, en, uat `robot -d results tests` (please ensure the default APP path exists in your local)
    - Run tag `LOGIN` with defaults options for android, en, prod `robot -v ENV:prod -v APP:"PATH_TO_APP" -d results -i LOGIN tests`
    - Run with your options `robot -v ENV:uat -v LANGUAGE:th -v LOCALE:TH -v PLATFORM_NAME:ios -v DEVICE_NAME:"iPhone 14" -v APP:"PATH_TO_APP" -v PLATFORM_VERSION=16.0 -d results-ios -i LOGIN tests`
=======
# Pi-App-Python-Robort-Freamework-
Python project
>>>>>>> origin/main
