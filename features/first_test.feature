Feature: User can convert area units

  Scenario: User can switch units
    Given User already clicked on Got it button
    And "Sq Kilometre" unit is already selected from the From options
    And "Sq Metre" unit is already selected from the To options
    When User clicks on the switch button
    Then "Sq Metre" unit is selected from the To options
    And "Sq Kilometre" unit is selected from the From options