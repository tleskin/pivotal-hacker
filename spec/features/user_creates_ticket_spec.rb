require "rails_helper"

RSpec.feature "a ticket" do
  it "can be created" do
    board = Board.create(title: "New Board")
    visit board_path(board)
    click_link_or_button("Create a New Ticket")
    fill_in "ticket[title]", with: "Complete App"
    fill_in "ticket[description]", with: "App Description"
    click_link_or_button("Create!")
    expect(page).to have_content("Complete App")
  end
end
