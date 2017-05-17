def sign_in_and_enter
  visit '/'
  fill_in('NAME', with: "Wanda Maximoff")
  click_button "ENTER"
end
