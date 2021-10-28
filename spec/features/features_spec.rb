require 'capybara/rspec'


feature 'See opponents point' do 
    scenario 'seeing other players hit point' do 
        sign_in_and_play
        # fill_in :player_1_name, with: 'Yasmin'
        # fill_in :player_2_name, with: 'Neneh'
        # click_button 'Submit'
        expect(page).to have_content "Neneh HP point:70"
    end 
end 