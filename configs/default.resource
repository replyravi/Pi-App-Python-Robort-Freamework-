*** Settings ***
Resource    ../configs/enum.resource
*** Variables ***
${APPIUM_PORT}                 %{APPIUM_PORT=4723} 
${PLATFORM_NAME}               %{PLATFORM_NAME=android}
${LANGUAGE}                    %{LANGUAGE=en}  #[en, th]
${LOCALE}                      %{LOCALE=US}  #[US, TH]
${ENV}                         %{ENV=uat}
${APP}                         %{APP=PATH_TO_APP}  # Example of %{APP=/Users/<your-user>/Downloads/app-uat-release.apk}
