*** Settings ***
Documentation                                      This is a basic test
Library                                            Selenium2Library

*** Variables ***
${url}                                              https://www.google.com
${browser}                                          chrome
${text}                                             xpath=//input[@name='q']
${search_button}                                    xpath=(//input[@value='Google Search'])[2]

*** Test Cases ***
Google search demo with an example
    [Documentation]                                 The user search 'Robot Framework'
    open browser                                    ${URL}    ${browser}
    wait until page contains                        ${URL}
    input text                                      ${text}  Robot Framework
    click element                                   ${search_button}
    wait until page contains                        Robot
    sleep     5s
    Close Browser
