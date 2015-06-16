class AddBoardToTickets < ActiveRecord::Migration
  def change
    add_reference :tickets, :board, index: true, foreign_key: true
  end
end
