*** Settings ***
Library    SeleniumLibrary    plugins=${CURDIR}/OpenBrowserExample.py
Force Tags   demo5

*** Variables ***
${SERVER}=         localhost:7000
${ROOT}=           http://${SERVER}/html
&{EXTRA DICTIONARY}    extra=dictionary    key=value


*** Test Cases ***
Open Browser Coplex Example
    Open Browser    ${ROOT}/forms/prefilled_email_form.html    seleniumwire    extra_dictionary=${EXTRA DICTIONARY}
    [Teardown]    Close All Browsers
