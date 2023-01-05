*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Start Test Case (url,browser)
    [arguments]    ${url}    ${browser}
    open browser    ${url}    ${browser}
    maximize browser window
    sleep    1s

End Test Case
    close browser