# require 'capybara/rspec' 

def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Yasmin'
  fill_in :player_2_name, with: 'Neneh'
  click_button 'Submit'
end

