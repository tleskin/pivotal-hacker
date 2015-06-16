require 'rails_helper'

RSpec.describe Board, type: :model do
  it "must have a title" do
    board = Board.create(title: nil)
    expect(board).to_not be_valid
  end

end
