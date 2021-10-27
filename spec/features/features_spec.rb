require 'capybara/rspec'


feature 'visting homepage' do 

scenario "Testing infrastructure" do
    visit'/' do 
        expect(page).to have_content 'Testing infrastructure working!'
    end 
end 

# scenario "Players can fill their name in" do 
#     visit('/') 
#     fill_in :player_1_name, with: "Yasmin"
#     fill_in :player_2_name, with: "Neneh"
#     click_button 'Submit'
#     expect(page).to have_content 'Yasmin vs. Neneh'
# end 

end 

feature 'Enter names' do
    scenario 'submitting names' do
      visit('/')
      fill_in :player_1_name, with: 'Charlotte'
      fill_in :player_2_name, with: 'Mittens'
      click_button 'Submit'
      
      save_and_open_page # will save the web page and open the browser to display it
      
      expect(page).to have_content 'Charlotte vs. Mittens'
    end
end