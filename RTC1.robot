**** Settings ***
Library  Selenium2Library



*** Variables ***
${url}  https://www.phptravels.net/

${Browser}  chrome
*** Test Cases ***

Travel Credential Login
       Open Browser  ${url}  ${Browser}
       Maximize Browser Window
       Click Element    xpath=//*[@id="fadein"]//a[2]
       Input Text    xpath=//input[@name="email"]    user@phptravels.com
       Input Password     name=password   demouser
       Click Button    xpath=//button[@type="submit"]

Hotel Booking
       Click Element    xpath=//*[@id="fadein"]//div[2]/nav/ul/li[2]/a
       Input Text     xpath=//*[@id="fadein"]//span[@role="combobox"]      Berlin
       Select Checkbox    xpath=//*[@id="fadein"]/span[@data-select2-id="1"]
       Close Browser