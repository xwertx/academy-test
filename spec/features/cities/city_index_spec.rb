include Warden::Test::Helpers
Warden.test_mode!

# Feature: City index page
#   As a user
#   I want to see a list of cities
feature 'Cities index page', :devise do

  after(:each) do
    Warden.test_reset!
  end

  # Scenario: City listed on index page
  #   Given I am signed in
  #   When I visit the city index page
  #   Then I see cities names
  scenario 'user sees cities list' do
    user = FactoryGirl.create(:user)
    city = FactoryGirl.create(:city)
    signin(user.email, user.password)
    visit '/cities'
    expect(page).to have_content city.cities_name
  end

end
