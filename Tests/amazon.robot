*** Settings ***
Documentation   this is some basic info about the whole test suite
Library  SeleniumLibrary

*** Test Cases ***
User can access amazon.com
    [Documentation]             This is sme basic info aboout the test
    [Tags]                      Test 1
    Open Browser                about:blank  chrome
    Go To                       https://www.amazon.com
    Wait Until Page Contains    Your Amazon.com
    Input Text                  id=twotabsearchtextbox      ferrari 458
    Click Button                xpath://*[@id="nav-search"]/form/div[2]/div/input

    Close Browser
