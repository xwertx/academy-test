include Warden::Test::Helpers
Warden.test_mode!

# Feature: Sign in
#   As a user
#   I want to sign in
#   So I can visit protected areas of the site
feature 'All users', :devise do

  after(:each) do
    Warden.test_reset!
  end
  # Scenario: User can sign in with valid credentials
  #   Given I exist as a user
  #   And I am not signed in
  #   When I sign in with valid credentials
  #   Then I i go to all users list
    scenario 'user can sign in and go to all users' do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    visit '/all_users'
    expect(page).to have_content user.email
  end
end