*** Settings ***
# Load core libraries: Selenium for web automation, BuiltIn for Robot Framework's native capabilities
Library    SeleniumLibrary
Library    BuiltIn


*** Variables ***
#  Target app URL and browser type for test execution
${URL}    https://robotsparebinindustries.com/
${BROWSER}    Chrome

# Credentials used for login test
${USERNAME}    maria
${PASSWORD}    thoushallnotpass


*** Keywords ***
# Opens browser, maximizes window, and waits for login field
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Sleep    5s   # Waits for page load
    Maximize Browser Window
    Wait Until Page Contains Element    id:username    timeout=10s


#  Fills in login form and submits
Login With Valid Credentials
    [Arguments]    ${username}    ${password}
    Input Text    id:username    ${USERNAME}
    #  Using the valid username from variables
    Input Text    id:password    ${PASSWORD}
    #  Using the valid username from variables
    Sleep    3s
    Click Button    xpath=//button[@class='btn btn-primary']
    Sleep    10s


#  Verifies that login was successful by checking username text on page
Verify Login Successful and Element Text should be maria
    Wait Until Page Contains Element    //span[@class='username']
    Element Text Should Be    //span[@class='username']    maria


#  Logs the user out and confirms presence of login button
Logout Of Application
    Click Button    id:logout
    Wait Until Page Contains Element    xpath=//button[@class='btn btn-primary']