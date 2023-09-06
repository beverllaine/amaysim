*** Variables ****
${url}                              https://www.amaysim.com.au/
${BROWSER}                          Firefox
${sim_plan_nav_menu}                css=.nav-main >li:nth-child(1)>a
${7_day_sim_plan_submenu}           css=a[href="/sim-plans/7-day-sim-plans"]
${location_link}                    7-day-sim-plans
${buy_now_button}                   css=div[class="product-card-ctas"]
${your_mobile_number_header}        id=product-mobile-number
${number_switcher_buttons}          css=div[data-testid="number-transfer-switcher"]
${pick_a_new_number}                xpath=(//div[@data-testid="number-transfer-switcher"]//label)[2]
${pick_a_different_number}          css=span[data-testid="pick-different-number"]
${second_number_radio_button}       xpath=(//input[@name="number"])[2]/..
${choose_your_type_of_sim}          xpath=//*[contains(text(),"choose your type of SIM")]
${physical_sim_button}              xpath=(//fieldset[@data-testid="choose-sim-type"]//div//div)[2]
${product_checkout_button}          css=a[href="/mobile/your-details"]
${new_customer_button}              xpath=//input[@data-testid="existing-user-no"]/..

${first_name}                       css=input[name="firstName"]
${last_name}                        css=input[name="lastName"]
${date_of_birth}                    css=input[name="dateOfBirth"]
${email}                            css=input[name="email"]
${password}                         css=input[name="password"]
${contact_number}                   css=input[name="contactNumber"]
${home_work_address}                xpath=(//input[@name="contactNumber"]/../parent::div/../parent::div/../following-sibling::div//input)[1]
${billing_address}                  xpath=//input[@name="deliveryAddressIsHomeAddress"]/..
${credit_card_payments}             xpath=//input[@data-payment-type="CREDIT_CARDS"]/..
${accept_term_conditions}           xpath=(//input[@name="acceptTermsAndConditions"]/../child::div)[1]
@{about_you_elements}               ${first_name}   ${last_name}    ${date_of_birth}    ${email}    ${password}
...                                 ${contact_number}       ${home_work_address}    ${billing_address}
...                                 ${credit_card_payments}        ${accept_term_conditions}

${address_value}                    Level 6, 17-19 Bridge St, SYDNEY NSW 2000
${first_name_value}                 Test
${last_name_value}                  ${first_name_value}
${dob_value}                        01/01/1990
${password_value}                   hello123
${contact_number_value}             0412345678
${first_addres_list}                xpath=(//div[@id="react-autowhatever-1"]//li)[1]
${continue_to_payment_button}       css=button[type="Submit"]
${card_payment}                     css=.ElementsApp:nth-child(1) > span > span >div span>input
${card_number_iframe}               xpath=//iframe[@title="Secure card number input frame"]
${card_number}                      xpath=//*[@data-elements-stable-field-name="cardNumber"]
${expiry_date_iframe}                xpath=//iframe[@title="Secure expiration date input frame"]
${expiry_date}                      xpath=//*[@data-elements-stable-field-name="cardExpiry"]
${security_code_iframe}             xpath=//iframe[@title="Secure CVC input frame"]
${security_code}                    xpath=//*[@data-elements-stable-field-name="cardCvc"]
${car_number_value}                 4242 4242 4242 4242
${expiry_date_value}                01/27
${security_code_value}              123
${consent_check_button}             xpath=//input[@data-id-consent-check=""]
${consent_button}                   xpath=//label[@class="css-1ne7y3i"]
${place_your_order_button}          xpath=//a[@data-testid="submit-button"]
${card_payment_failed_subheader}    Credit Card payment failed
${card_payment_failed_body}      Your attempt to pay via Credit Card has failed. Please ensure you have enough funds and try again or use another credit card.
