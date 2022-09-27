*** Settings ***
Library  Selenium2Library
Library    XML



*** Variables ***
${url}  https://www.phptravels.net/

${Browser}  chrome
*** Test Cases ***
Travel Credential Login
         Open Browser  ${url}  ${Browser}
         Login Page
Hotel Booking Travels
         Hotel Booking


*** Keywords ***

Login Page
       Maximize Browser Window
       Click Element   xpath=//*[@id="ACCOUNT"]
       Click Element    xpath=//*[@id="fadein"]//div[3]/div/ul/li[1]/a
       Input Text    xpath=//input[@name="email"]    user@phptravels.com
       Input Password     name=password   demouser
       Click Button    xpath=//button[@type="submit"]


Hotel Booking

       Click Button   xpath=//a[@title="hotels"]
       #Click Button   xpath=//button[@id="hotels-tab"]
       #Click Element    xpath=//*[@id="fadein"]//li[1]/a
       #Click Element    xpath=//*[@id="select2-hotels_city-container"]
       Input Text     type=search  Berlin
       Click Element    xpath=//*[@id="select2-hotels_city-results"]/li[1]/text()
       Select From List By Value    locator
       Select Radio Button    trip   return

       Input Text    name= to     Frankfurt Hahn
       Click Element    xpath= //div[@class="autocomplete-location"]
      #Click Element     xpath=//table[@class=" table-condensed"]
      Select All From List    xpath=//table[@class=" table-condensed"]
      Set Variable
      alldates= driver.find_elements(By.xpath,"//table[@class=" table-condensed"]);
      for dataelement in alldates:
      date=dataelement.text
      if date=="20":
      dataelement.click()
      break

      #Click Element    id= select2-hotels_city-container

