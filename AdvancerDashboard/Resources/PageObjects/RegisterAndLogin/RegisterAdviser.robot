*** Settings ***
Library    SeleniumLibrary

Variables    ../../Variables.py
Variables  ../../WebElements.py

*** Keywords ***
Select title
    [arguments]   ${user}
    click element    ${adviser_title_select}
    sleep    1s
    select from list by value    ${adviser_title_select}
    ...    ${user["title"]}
    list selection should be  ${adviser_title_select}
    ...    ${user["title"]}
    press keys    None  RETURN
    sleep    1s

Complete text fields
    [arguments]   ${user}
    input text    ${adviser_name}    ${user["name"]}
    input text    ${adviser_last_name}    ${user["last_name"]}
    input text    ${adviser_personal_FCA}    ${user["personal_FCA"]}
    input text    ${adviser_company_name}    ${user["company_name"]}
    input text    ${adviser_company_FCA}    ${user["company_FCA"]}
    input text    ${adviser_email}    ${user["email"]}
    input text    ${adviser_confirm_email}    ${user["email"]}
    input text    ${adviser_password}    ${user["password"]}
    input text    ${adviser_confirm_password}    ${user["password"]}
    input text    ${adviser_tel}    ${user["personal_tel"]}
    input text    ${adviser_office_tel}    ${user["office_tel"]}

Add address manually
    [arguments]   ${user}
    click element    ${add_address_manually_link}
    wait until page contains element    ${add_address_form}
    input text    ${add_address_street}    ${user["street"]}
    input text    ${add_address_city}    ${user["city"]}
    input text    ${add_address_county}    ${user["county"]}
    input text    ${add_address_country}    ${user["country"]}
    input text    ${add_address_postcode}    ${user["postcode"]}

Complete registration form with new user (user)
    [arguments]    ${user}
    Select title    ${user}
    Complete text fields    ${user}
    Add address manually    ${user}
     select checkbox    ${keep_me_updated_checkbox}

Submit registration and validate if success
    mouse over    ${register_submit_btn}
    sleep    2s
    click element    ${submit_registration_link}
    sleep    3s
    wait until page contains element    ${registered_form_success_box}
    element should contain    ${registration_success_info_box}    ${registered_form_success_message}
    sleep    3s




