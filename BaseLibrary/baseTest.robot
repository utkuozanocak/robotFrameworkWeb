*** Settings ***
Library    SeleniumLibrary
Library    Screenshot
Library    Process
Library    OperatingSystem


*** Variables ***
${chrome_driver}    Drivers/chromedriver

*** Keywords ***
Test Case Setup
    Open Browser     https://www.hepsiburada.com/    Chrome    executable_path=${chrome_driver}
    Maximize Browser Window
    Set Selenium Implicit Wait    30

Test Case TearDown
    Capture Page Screenshot
    Sleep    2
    Close All Browsers

Wait And Click
    [Arguments]    ${selector}
    Wait Until Element Is Visible   ${selector}    timeout=30
    Click Element    ${selector}
