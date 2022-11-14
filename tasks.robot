*** Settings ***
Documentation       Template robot main suite.
Library    RPA.Browser

*** Tasks ***
#Minimal task
#    Log    Done.

Open browser and take a screenshot
    Open Available Browser    https://www.google.com
    Screenshot
    Close All Browsers
