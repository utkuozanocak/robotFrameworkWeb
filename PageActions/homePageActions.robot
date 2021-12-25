*** Settings ***

Library      SeleniumLibrary
Library    XML
Variables    ../PageObjects/homePageObjects.py
Resource   ../BaseLibrary/baseTest.robot


*** Keywords ***

Search Product
    [Arguments]    ${productName}
    Input Text     ${searchBox_Txt}    ${productName}

Click Search Button
    Wait And Click    ${search_Btn}

Check Search Is Complete
    Sleep    3s
    Wait Until Page Contains Element    ${checkSearch_Lbl}    timeout=30
    Page Should Contain Element    ${checkSearch_Lbl}      timeout=30

Search And Select Brand
    [Arguments]  ${brandName}  ${selectBrand}
    Check Search Is Complete
    Input Text    ${searchBrand_Txt}    ${brandName}
    Wait And Click    //div[text()='${selectBrand}']

Select Product Price
    [Arguments]       ${price}
    Check Search Is Complete
    Wait And Click    //div[text()='${price}']   

Select Product Color    
    [Arguments]       ${color}
    Check Search Is Complete
    Wait And Click    ${colorLstOpen_Btn}
    Wait And Click    //div[text()='${color}']  

Click First Product In Search
    Wait And Click    ${firstProduct_Lnk}    

Check Selected Filter
    [Arguments]       ${filterText}
    Wait Until Element Is Visible   //div[@class='FacetList-content']//label[text()='${filterText}']    
