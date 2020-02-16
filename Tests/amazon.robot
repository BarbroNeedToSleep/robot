*** Settings ***
Documentation   this is some basic info about the whole test suite
Library  SeleniumLibrary
Documentation               This is some basic info aboout the test
Library                     Seleniumlibrary
Test Setup                  Begin Web Test
Test Teardown               End Web Test

*** Keywords ***
Begin Web Test
        Open Browser                about:blank  chrome

Go to Web Page
        Go To                       https://www.amazon.com
        Wait Until Page Contains    Your Amazon.com

Search for Product
        Input Text                  id=twotabsearchtextbox      ferrari 458
        Click Button                xpath://*[@id="nav-search"]/form/div[2]/div/input
        Wait Until Page Contains   results for "ferrari 458"

End Web Test
        Close Browser

*** Test Cases ***
User can access amazon.com

    [Documentation]             This is some basic info aboout the test
    [Tags]                      Test 1
    Go to Web Page

User can conduct a search

    [Documentation]             This is some basic info aboout the test
    [Tags]                      Test 2
    Go to Web Page
    Search for Product



