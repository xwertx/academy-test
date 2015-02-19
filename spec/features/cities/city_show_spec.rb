include Warden::Test::Helpers
Warden.test_mode!

# Feature: City page
#   As a user
#   I want to visit city profile page
#   So I can see city data
feature 'City profile page', :devise do

  after(:each) do
    Warden.test_reset!
  end

  # Scenario: User sees city
  #   Given I am signed in
  #   When I visit the city page
  #   Then I see city details
  scenario 'user sees city profile' do
    user = FactoryGirl.create(:user)
    city = FactoryGirl.create(:city)
    signin(user.email, user.password)
    visit '/cities/1'
    expect(page).to have_content 'Show City'
    expect(page).to have_content city.cities_name
  end

end
