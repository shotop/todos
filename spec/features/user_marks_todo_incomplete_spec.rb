require 'rails_helper'

feature 'User Marks Todo Incomplete' do
  scenario 'successfully' do
    sign_in

    click_on "Add a new todo"
    fill_in "Title", with: "Buy Milk"
    click_on "Submit"

    click_on "Mark Complete"
    click_on "Mark Incomplete"

    expect(page).not_to have_css(".todos li.completed", text: "Buy Milk")
    expect(page).to have_content "Buy Milk"
  end
end
