*** Settings ****
Resource         ${CURDIR}/../global_setup.robot
Resource         ${CURDIR}/../variables/create_mobile_plan_variables.robot

*** Keywords ****
############################### GIVEN
I Navigate To Amaysim
    open browser   ${url}    ${BROWSER}
    Set Window Size And Position
    wait until page contains    amaysim
    wait until element is visible    ${sim_plan_nav_menu}

############################### WHEN
I Select Sim Plan
    mouse over   ${sim_plan_nav_menu}
    mouse down on link      ${7_day_sim_plan_submenu}

I Select 7 Day Sim Plan
    click element    ${7_day_sim_plan_submenu}

I Was Redirected to Screen - 7 Day Sim Plan
    wait until location contains    ${location_link}
    page should contain    7 Day SIM Plans

I Click Buy Now
    wait until element is visible    ${buy_now_button}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    click element    ${buy_now_button}

I Click Pick A New Number
    mouse down      ${pick_a_new_number}
    click element    ${pick_a_new_number}

I Click Pick Different Number
    mouse down        ${pick_a_different_number}
    click element     ${pick_a_different_number}

I Click The Second Number
    wait until element is visible    ${second_number_radio_button}
    mouse down     ${second_number_radio_button}
    click element     ${second_number_radio_button}

I Choose Physical Sim
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    wait until element is visible     ${choose_your_type_of_sim}
    mouse down      ${physical_sim_button}   

I Click Checkout Button
    wait until element is visible     ${product_checkout_button}
    mouse down on link    ${product_checkout_button}
    sleep    3s
    click element    ${product_checkout_button}

I Choose New Customer Under "Already With Amaysim?"
    mouse down   ${new_customer_button}
    click element    ${new_customer_button}

I Fill In Section - About You
    FOR    ${element}   IN    @{about_you_elements}
        element should be visible       ${element}
    END
    mouse down      ${first_name}
    input text      ${first_name}       ${first_name_value}
    mouse down      ${last_name}
    input text      ${last_name}        ${last_name_value}
    mouse down      ${date_of_birth}
    input text      ${date_of_birth}        ${dob_value}
    ${email_random} =   FakerLibrary.Email
    mouse down      ${email}
    input text      ${email}        ${email_random}
    Execute JavaScript    window.scrollTo(0, 800)
    scroll element into view    ${contact_number}
    mouse down      ${password}
    input text      ${password}     ${password_value}
    Execute JavaScript    window.scrollTo(0, 800)
    mouse down      ${contact_number}
    input text      ${contact_number}       ${contact_number_value}
    click element   ${credit_card_payments}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    mouse down      ${accept_term_conditions}
    click element   ${accept_term_conditions}
    Execute Javascript  window.scrollTo(0, 900)
    mouse down      ${home_work_address}
    input text      ${home_work_address}    ${address_value}
    wait until element is visible    ${first_addres_list}
    click element    ${first_addres_list}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    sleep    2s

I Click Continue To Payment Button
    wait until element is visible       ${continue_to_payment_button}
    mouse down      ${continue_to_payment_button}
    click element    ${continue_to_payment_button}

I Fill In Secure Payment Form
    wait until element is visible    ${card_number_iframe}
    select frame     ${card_number_iframe}
    input text          ${card_number}      ${car_number_value}
    unselect frame
    select frame    ${expiry_date_iframe}
    input text          ${expiry_date}          ${expiry_date_value}
    unselect frame
    select frame        ${security_code_iframe}
    input text          ${security_code}        ${security_code_value}
    unselect frame
    Execute Javascript  window.scrollTo(0, 900)

I Click Place Your Order Button
    mouse down    ${consent_check_button}
    click element     ${consent_button}
    wait until element is enabled    ${place_your_order_button}
    click element       ${place_your_order_button}



############################### THEN
I Was Redirected To Screen - Cart
    wait until location contains    cart
    wait until element is visible        ${your_mobile_number_header}
    wait until element is visible    ${number_switcher_buttons}

I Was Redirected To Screen - About 
    wait until location contains    your-details
    wait until page contains        already with amaysim?

I Was Redirected To Screen - Pay
    wait until location contains    my-account
    wait until page contains        secure payment

"Card Payment Failed" Was Displayed
    wait until page contains    ${card_payment_failed_subheader}
    wait until page contains    ${card_payment_failed_body}
    capture page screenshot

############################### INTERNAL KEYWORDS
Set Window Size And Position
    set window size    1440    900
    set window position    0    0
