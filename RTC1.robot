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
       Input Text     xpath=//*[@id="fadein"]//span[1]/input   Berlin
       Select Checkbox    xpath=//*[@id="fadein"]//tr[5]/td[6]
       Sleep  3s
       Close Browser