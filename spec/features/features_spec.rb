require 'capybara/rspec'


feature 'visting homepage' do 

  scenario "Testing infrastructure" do
        visit'/' do 
        expect(page).to have_content 'Testing infrastructure working!'
        end 
    end 

end 

feature 'Enter names' do
        scenario 'submitting names' do
        visit('/')
        fill_in :player_1_name, with: 'Yasmin'
        fill_in :player_2_name, with: 'Neneh'
        click_button 'Submit'
        expect(page).to have_content 'Yasmin vs. Neneh'
        end
end

feature 'See opponents point' do 
    scenario 'seeing other players hit point' do 
        visit('/')
        fill_in :player_1_name, with: 'Yasmin'
        fill_in :player_2_name, with: 'Neneh'
        click_button 'Submit'
        expect(page).to have_content "Neneh HP point:70"
    end 
end 