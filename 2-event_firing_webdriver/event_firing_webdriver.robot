*** Settings ***
Library           SeleniumLibrary    event_firing_webdriver=${CURDIR}/MyListener.py
Suite Teardown    Close All Browsers

*** Variables ***
${SERVER}=                  localhost:7000
${BROWSER}=                 Chrome
${REMOTE_URL}=              ${NONE}
${DESIRED_CAPABILITIES}=    ${NONE}
${ROOT}=                    http://${SERVER}/html
${FRONT_PAGE}=              ${ROOT}/


*** Test Cases ***
Open Browser To Start Page
    Open Browser    ${FRONT PAGE}    ${BROWSER}

Event Firing Webdriver Go To (WebDriver)
    Go To     ${ROOT}/named_submit_buttons.html

Event Firing Webdriver Input Text (WebElement)
    Input Text    //input[@name="textfield"]    FooBar

Event Firing Webdriver Click Element (WebElement)
    Click Element    //input[@name="ok_button"]
