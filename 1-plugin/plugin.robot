*** Settings ***
Library      SeleniumLibrary    plugins=${CURDIR}/Plugin.py
Force Tags   demo1
Suite Teardown    Close All Browsers

*** Test Cases ***
Open Real Browser And Do Something
    Open Real Browser
    Do Something

Overwriting Exsisting Keyword
    ${text} =    Open Browser     text is returned
    Should Be Equal    ${text}    text is returned
