*** Settings ***
Library  Selenium2Library

*** Variables ***
${url}  https://www.phptravels.net/

${Browser}  chrome
*** Test Cases ***

Amazon
      Open Browser  ${url}  ${Browser}
      Maximize Browser Window
      //Input Text    id:twotabsearchtextbox    Soap
      //Click Element   id:nav-search-submit-button
      //Click Element    class:cls-image
     // Capture Page Screenshot

