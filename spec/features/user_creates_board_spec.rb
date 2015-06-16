require "rails_helper"

RSpec.feature "a board" do

  it "create form can be accessed from the root page" do
    visit root_path
    click_link_or_button "Create a New Board"
    expect(page).to have_content("Please Enter a Title")
  end
end
