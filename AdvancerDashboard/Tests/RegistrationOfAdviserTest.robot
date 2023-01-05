*** Settings ***
Documentation    Register new adviser

Resource    ../Resources/CommonFunctionalities.robot
Resource    ../Resources/PageObjects/RegisterAndLogin/RegisterAdviser.robot
Variables    ../Resources/Variables.py

Test Setup    CommonFunctionalities.Start Test Case (url,browser)
...    ${register_adviser_url}    ${chrome_browser}

Test Teardown   CommonFunctionalities.End Test Case

*** Test Cases ***
Register new advisor
    [documentation]    *Registration of Adviser* :
                 ...    Register a new Adviser and check if the person 's account
                 ...    was created properly.

    [tags]    Advancer Dashboard Test - Test No 1
    RegisterAdviser.Complete registration form with new user (user)
    ...    ${new_user_to_register}
    sleep    3s
    RegisterAdviser.Submit registration and validate if success
    sleep  3s
