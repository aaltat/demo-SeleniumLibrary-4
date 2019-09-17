*** Settings ***
Library           SeleniumLibrary
Library           get_selenium_options.py
Suite Teardown    Close All Browsers

*** Variables ***
${SERVER}=                  localhost:7000
${BROWSER}=                 Chrome
${REMOTE_URL}=              ${NONE}
${DESIRED_CAPABILITIES}=    ${NONE}
${ROOT}=                    http://${SERVER}/html
${FRONT_PAGE}=              ${ROOT}/

*** Test Cases ***
Chrome Browser With Selenium Options As String
    Open Browser    ${FRONT PAGE}    ${BROWSER}
    ...    options=add_argument("--disable-dev-shm-usage" );headless=True

Chrome Browser With Selenium Options Object
    ${options} =    Get Chrome Options
    Open Browser    ${FRONT PAGE}    ${BROWSER}
    ...    options=${options}

Chrome Browser With Selenium Options Invalid Method
    Run Keyword And Expect Error     AttributeError: 'Options' object has no attribute 'not_here_method'
    ...    Open Browser    ${FRONT PAGE}    ${BROWSER}
    ...    options=not_here_method("arg1")
