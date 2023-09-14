*** Settings ****
Resource         ${CURDIR}/../resources/global_setup.robot
Resource         ${CURDIR}/../resources/keywords/create_mobile_plan_keywords.robot
Default Tags        create-mobile-plan
Suite Teardown      Close Browser


*** Test Cases ****
Scenario1 - Customer Selects A Sim Plan
    Given I Navigate To Amaysim
    When I Select Sim Plan
    And I Select 7 Day Sim Plan
    Then I Was Redirected to Screen - 7 Day Sim Plan
    [Teardown]     I Click Buy Now 

Scenario2- Customer Fills In The Form In "Cart" Screen
    When I Was Redirected To Screen - Cart
    And I Click Pick A New Number
    And I Click Pick Different Number
    And I Click The Second Number
    And I Choose Physical Sim
    And I Click Checkout Button
    Then I Was Redirected To Screen - About

Scenario3- Customer Fills In The Form In "About You" Screen
    When I Choose New Customer Under "Already With Amaysim?"
    And I Fill In Section - About You
    And I Click Continue To Payment Button
    Then I Was Redirected To Screen - Pay

Scenario4- Customer Fills In The Form In "Secure Payment" Screen
    When I Fill In Secure Payment Form
    And I Click Place Your Order Button
    Then "Card Payment Failed" Was Displayed
