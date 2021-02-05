*** Settings ***
Library   SeleniumLibrary 
Documentation    Cette suite de test est pour expliquer la synchronisation.   


*** Test Cases ***
LoginTest1
    Open Browser    https://opensource-demo.orangehrmlive.com/    gc
    Maximize Browser Window
    
    #${speed} =  Get Selenium Speed
    #Log To Console    ${speed}    
    
    #${speed2} =  Get Selenium Speed
    #Log To Console    ${speed2}
    
    Input Text    xpath=//input[@id='txtUsername']    Admin    
    Input Password    xpath=//input[@id='txtPassword']    admin123
    Click Button    xpath=//input[@id='btnLogin']
    
LoginTest2
    Open Browser    https://opensource-demo.orangehrmlive.com/    gc
    Maximize Browser Window
    
    #Set Selenium Speed    3s
    
    Input Text    xpath=//input[@id='txtUsername']    Admin    
    Input Password    xpath=//input[@id='txtPassword']    admin123
    Click Button    xpath=//input[@id='btnLogin']
    Click Link    xpath=//a[id='welcome']    
    Click Link    link=Logout    
    
LoginTest3
    Open Browser    https://opensource-demo.orangehrmlive.com/    gc
    Maximize Browser Window
    
    #${timeout} =  Get Selenium Timeout
    #Log To Console    ${timeout} 
       
    #Set Selenium Timeout    10s
    
    Input Text    xpath=//input[@id='txtUsername']    Admin    
    Input Password    xpath=//input[@id='txtPassword']    admin123
    Click Button    xpath=//input[@id='btnLogin']
    Wait Until Page Contains    Dashboard
    
LoginTest4
    Open Browser    https://opensource-demo.orangehrmlive.com/    gc
    Maximize Browser Window
    
    Input Text    xpath=//input[@id='txtUsername']    Admin    
    Input Password    xpath=//input[@id='txtPassword']    admin123
    
    Set Selenium Implicit Wait    10s
    Click Button    xpath=//input[@id='btnLogin']  
    
LoginTest5
    Log To Console    Hello  
    [Documentation]       Ceci est un simple test.




    