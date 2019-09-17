*** Settings ***
Library    SeleniumLibrary    plugins=${CURDIR}/ElementFinderPlugin.py
Force Tags   demo4

*** Test Cases ***
Oerwriting ElementFinder
    ${element} =    Get WebElement    //div
    Should Be Equal    ${element}    Dummy find

Using Other Keyword
    ${text} =    Other Keyword     tidii
    Should Be Equal    ${text}     Dummy find tidii
