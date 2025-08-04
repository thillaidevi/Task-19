*** Settings ***
# Load the core SeleniumLibrary for browser interactions
Library    SeleniumLibrary

#  Import custom keywords from a shared resource file
Resource    ../resources/keywords.robot

# Define setup actions to be executed before any test case in this suite
Suite Setup    Open Browser To Login Page

#  Teardown actions to ensure proper browser cleanup after the suite
Suite Teardown    Close Browser


*** Test Cases ***
Verify Successful Login Functionality
    Capture Page Screenshot    Before_login_Screenshot.png
     #  Use a keyword that performs login using credentials from variables
    Login With Valid Credentials    ${USERNAME}    ${PASSWORD}
    Capture Page Screenshot    After_login_text_contains_maria.png

    # Assert that login was successful by checking specific UI element text
    Verify Login Successful and Element Text should be maria

     #  Ensure logout functionality works as expected post verification
    Logout Of Application
    Capture Page Screenshot    Logout.png