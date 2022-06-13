Given(/^User already clicked on Got it button$/) do
  gotItButton = find_element(id: "android:id/button1")
  # in case the user is openning the app for the first time
  if(gotItButton)
    gotItButton.click
  end
  puts("User clicked on Got it button once before")
end

And(/^"([^"]*)" unit is already selected from the From options$/) do |arg|
  actualSelectedValue = find_element(id: "header_text_unit_from").text
  if(actualSelectedValue != arg)
    fail("Expected #{arg} unit to be selected from the From options, but got #{actualSelectedValue}")
  end
end

And(/^"([^"]*)" unit is already selected from the To options$/) do |arg|
  actualSelectedValue = find_element(id: "header_text_unit_to").text
  if(actualSelectedValue != arg)
    fail("Expected #{arg} unit to be selected from the To options, but got #{actualSelectedValue}")
  end
end

When(/^User clicks on the switch button$/) do
  switchButton = find_element(id: "fab")
  if(switchButton)
    switchButton.click
    puts("User clicked on the Switch units button")
  else
    fail("Switch button not found")
  end
end

Then(/^"([^"]*)" unit is selected from the To options$/) do |arg|
  actualSelectedValue = find_element(id: "header_text_unit_from").text
  if(actualSelectedValue != arg)
    fail("Expected #{arg} unit to be selected from the From options, but got #{actualSelectedValue}")
  end
end

And(/^"([^"]*)" unit is selected from the From options$/) do |arg|
  actualSelectedValue = find_element(id: "header_text_unit_to").text
  if(actualSelectedValue != arg)
    fail("Expected #{arg} unit to be selected from the To options, but got #{actualSelectedValue}")
  end
end