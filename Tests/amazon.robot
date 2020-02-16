*** Settings ***
Documentation   this is some basic info about the whole test suite
Library  SeleniumLibrary
Documentation               This is some basic info aboout the test
Resource                   ../Recources/keywords.robot
Library                     Seleniumlibrary
Suite Setup                 Begin Web Test
Suite Teardown              End Web Test

*** Variables ***
${BROWSER}        chrome
${URL}            http://www.amazon.com




*** Test Cases ***
User can access amazon.com

    [Documentation]             This is some basic info aboout the test
    [Tags]                      Test 1
    Go to Web Page

User can conduct search

    [Documentation]             This is some basic info aboout the test
    [Tags]                      Test 2
    Go to Web Page
    Search for Product          ferrari 458         results for "ferrari 458"

User can conduct another search

    [Documentation]             This is some basic info aboout the test
    [Tags]                      Test 3
    Go to Web Page
    Search for Product          tesla model x        results for "tesla model x"