*** Settings ***
Library  Selenium2Library




*** Variables ***
${url}  https://www.contorion.de/

${Browser}  chrome
*** Test Cases ***
Contorion Credential Login
         Open Browser  ${url}  ${Browser}
         Login Page


*** Keywords ***

Login Page

       Maximize Browser Window
       Click Button    id=popin_tc_privacy_button
       Click Element    xpath=//*[@id="page-home-index"]//header/div[3]/div/div[4]/a
       Input Text    xpath=//*[@id="login_email"]    mayaraj01@gmail.com
       Input Password     xpath=//*[@id="login_password"]   Demo12345
       Click Button    xpath=//button[@type="submit"]
       Click Element    name=q
       Input Text    name=q   Hammer
       Click Button    id=search-button

       Close All Browsers
 