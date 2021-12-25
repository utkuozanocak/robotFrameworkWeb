*** Settings ***

Library      SeleniumLibrary
Library    XML
Variables    ../PageObjects/basketPageObjects.py
Resource     ../BaseLibrary/baseTest.robot


*** Keywords ***

Check Basket Page Open
    Wait Until Element Is Visible    ${basketPage_Title}
    Page Should Contain Element      ${basketPage_Title}
  