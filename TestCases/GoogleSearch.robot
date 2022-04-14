*** Settings ***
Documentation                                      This is a basic test to search robotframework in google and return urls
Library                                             Selenium2Library  timeout=5   implicit_wait=1.5   run_on_failure=Capture Page Screenshot

*** Variables ***
${url}                                              https://www.google.com
${url1}                                             https://robotframework.org/
${url2}                                             https://www.tutorialspoint.com/robot_framework/index.htm
${url3}                                             https://github.com/robotframework/robotframework
${url4}                                             https://robocorp.com/docs/languages-and-frameworks/robot-framework/basics
${browser}                                          chrome
${text}                                             xpath=//input[@name='q']
${search_button}                                    xpath=(//input[@name='btnK'])[1]

*** Test Cases ***
Google search demo with an example
    [Documentation]                                 The user search 'Robot Framework'
    open browser                                    ${URL}    ${browser}
    wait until page contains                        ${URL}
    Maximize Browser Window
    input text                                      ${text}  Robot Framework
    click element                                   ${search_button}
    wait until page contains                        Robot
    Capture Page Screenshot                         filename=${EXECDIR}/Screenshots/selenium-screenshot-{index}.png
    Click Link                                      ${url1}
    Capture Page Screenshot                         filename=${EXECDIR}/Screenshots/selenium-screenshot-{index}.png
    Go Back
    Click Link                                      ${url2}
    Capture Page Screenshot                         filename=${EXECDIR}/Screenshots/selenium-screenshot-{index}.png
    Go Back
    Click Link                                      ${url3}
    Capture Page Screenshot                         filename=${EXECDIR}/Screenshots/selenium-screenshot-{index}.png
    Go Back
    Click Link                                      ${url4}
    Capture Page Screenshot                         filename=${EXECDIR}/Screenshots/selenium-screenshot-{index}.png
    sleep     5s
    Close Browser



