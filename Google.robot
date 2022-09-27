*** Settings ***
Library  Selenium2Library

*** Variables ***
${url}  https://www.google.com/

${Browser}  chrome
*** Test Cases ***

Amazon
      Open Browser  ${url}  ${Browser}
      Set Browser Implicit Wait    5
      Input Text    name=q     soap
