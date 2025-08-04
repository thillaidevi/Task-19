#  Robot Framework Web Automation Suite

This project is a web automation test suite built using **Robot Framework** and **SeleniumLibrary**. It automates login functionality for the demo site [RobotSpareBinIndustries](https://robotsparebinindustries.com/), verifying successful login and logout operations

### Prerequisites

- Python 3.x
- [Robot Framework](https://robotframework.org/)
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/)
- Chrome browser
- ChromeDriver (compatible with your Chrome version)

### Installation

bash
pip install robotframework
pip install robotframework-seleniumlibrary

### Project Structure
    Robot_Sparebin_Industries
         |_resouces
             |_keywords.robot
         |_tests
             |_login_test.robot
         |_reports
         |_output

### Robot Files
keywords.robot
Defines reusable actions for browser interaction and login flow.

login_test.robot
Implements the actual test case using the shared keywords.

### Running Tests
To execute the test suite:

bash
robot tests/login_test.robot