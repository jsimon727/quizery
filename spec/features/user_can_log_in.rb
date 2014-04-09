require 'spec_helper'

describe "a student can join Quizery" do
  let(:student){ FactoryGirl.create(:user, type: "Student") }
  let(:student1){ FactoryGirl.create(:user) }

  it "creates a new student" do
    visit '/'
    within ".joinbutton" do
      click_button "JOIN "
    end

    fill_in :email, with: student.email
    fill_in :first_name, with: student.first_name
    fill_in :last_name, with: student.student_last_name
    fill_in :password, with: student.password
    fill_in :password_confirmation, with: student.password_confirmation
    click_button "Join"

    within ".quizindex" do
      expect(page).to have_content "Hello, #{student.first_name}!"
    end

    logout(student)
  
    within "nav" do
      expect(page).to have_content "Log In"
    end

    login(student)

    within ".welcomepage" do
      expect(page).to have_content "Hello, #{student.first_name}!"
    end
    
    logout(student)

    login(student1)

    within ".welcomepage" do
      expect(page).to_not have_content "Hello, #{student.first_name}!"
      expect(page).to have_content "Hello, #{student1.first_name}"
    end

    logout(student1)
  end

  def login(user)
    visit '/'
    click_button "LOG IN"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in"
  end

  def logout(user)
    click_link "Log Out, #{user.first_name}"
  end
end