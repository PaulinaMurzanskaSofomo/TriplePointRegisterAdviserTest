from typing import TypedDict


class User(TypedDict):
    title: str
    name: str
    last_name: str
    personal_FCA: str
    company_name: str
    company_FCA: str
    email: str
    password: str
    personal_tel: str
    office_tel: str
    postcode: str
    street: str
    city: str
    county: str
    country: str

# browsers
chrome_browser = "Chrome"

# urls
register_adviser_url = 'https://triplepoint--staging.sandbox.my.site.com/IFASelfReg'
login_adviser_url = 'https://triplepoint--staging.sandbox.my.site.com/IFASelfReg'

# users data
new_user_to_register: User = dict(
    title= "Mr",
    name= "James",
    last_name= "Smith",
    personal_FCA= "ATR88865",
    company_name= "Hughes-Packard Inc",
    company_FCA= "993249",
    email= "john.doe58@hotmail.co.uk",
    password="3FxD&:>ndH:(1p`(6#v",
    personal_tel= "+44 2583 042675",
    office_tel= "+44 3449 16759",
    postcode= "HD9 9PH",
    street= "8 Zoe Motorway",
    city= "Port Alice",
    county= "Port Julie",
    country= "United Kingdom",
)


# forms messages
registered_form_success_message = "Thank you for registering"
