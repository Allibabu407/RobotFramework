#RobotFramework
This is a demo Project which contains a GoogleSearch.robot. 
This file will open the Chrome browser and redirect to google.com page.
It will search for RobotFramework and list all the pages which contains RobotFramework, 
and it will print the links and take a snapshots as well.

#Project contains Directories
Reports ---> This Directories mainly consists of reports.

TestCases ---> This folder consists of all test cases related to the test automation

Screenshots ---> Screenshots are captured in this directory

#External dependencies
IntelliBot Plugin
robotframework
robotframework-selenium2library

Driver executable ---> Chrome driver is used for automation.

References: robotframework.org/Selenium2Library


# How to execute Test cases
 robot -d reports .\TestCases\GoogleSearch.robot



