require "rails_helper"

RSpec.feature "a board" do

  it "create form can be accessed from the root page" do
    visit root_path
    click_link_or_button "Create a New Board"
    expect(page).to have_content("Please Enter A Title For Your Board")
  end

  it "can be created by a user" do
    visit new_board_path
    fill_in "board[title]", with: "Pivotal-Slacker"
    click_link_or_button("Create Board")
    expect(page).to have_content("Your Board: Pivotal-Slacker")
  end
end
