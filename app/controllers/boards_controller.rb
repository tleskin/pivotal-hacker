class BoardsController < ApplicationController
  def new
    @board = Board.new
  end

  def create
    board = Board.new(board_params)
    if board.save
      redirect_to board_path(board)
    else
      flash[:errors] = "You need a Title. #{board.errors.full_messages}"
      redirect_to :back
    end
  end

  private

  def board_params
    params.require(:board).permit(:title)
  end
end
