*** Settings ***

Library    SeleniumLibrary
Resource   ../PageActions/homePageActions.robot
Resource   ../PageActions/productPageActions.robot
Resource   ../PageActions/basketPageActions.robot
Resource   ../BaseLibrary/baseTest.robot

Test Setup       Test Case Setup   
Test Teardown    Test Case TearDown

*** Test Cases ***

Test Case 1
    Search Product    bluetooth kulaklık
    Click Search Button
    Check Search Is Complete

    Search And Select Brand  JBL  JBL
    Select Product Price     750 - 1000 TL 
    Select Product Color     Siyah

    Check Selected Filter  JBL
    Check Selected Filter  750 - 1000 TL
    Check Selected Filter  Siyah

    Click First Product In Search
    Check Product Page Is Loaded
    Click To Add Basket Button
    Click To Go To Basket Button
    Check Basket Page Open
