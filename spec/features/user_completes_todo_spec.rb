require 'rails_helper'

feature 'User Completes Todo' do
  scenario 'successfully' do
    sign_in

    click_on "Add a new todo"
    fill_in "Title", with: "Buy Milk"
    click_on "Submit"

    click_on "Mark Complete"
    expect(page).to have_css(".todos li.completed", text: "Buy Milk")
  end
end
