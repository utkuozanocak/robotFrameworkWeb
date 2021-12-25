*** Settings ***

Library      SeleniumLibrary
Library    XML
Variables    ../PageObjects/productPageObjects.py
Resource   ../BaseLibrary/baseTest.robot


*** Keywords ***
Click To Add Basket Button
    Wait And Click    ${addToCart_Btn}

Click To Go To Basket Button
    Wait And Click    ${goToCart_Btn}   

Check Product Page Is Loaded
    ${handles}=  Get Window Handles
    Switch Window   ${handles}[1]
    Wait Until Element Is Visible    ${addToCart_Btn}
    Page Should Contain Element    ${addToCart_Btn}