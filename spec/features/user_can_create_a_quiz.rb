require 'spec_helper'

describe "a teacher can create a quiz", :js => true do
  Capybara.javascript_driver = :webkit
  let(:teacher){ FactoryGirl.create(:user, type: "Student") }

  it "creates a new quiz", :driver => :webkit do
    visit '/'
    login(:teacher)
    click_link ""
  end
end    








    def login(user)
      visit '/'
      click_button "LOG IN"
      fill_in :email, with: user.email
      fill_in :password, with: user.password
      click_button "Log in"
    end