class TicketsController < ApplicationController
  def new
    @ticket = Ticket.new
  end

  def create
    ticket = Ticket.new(ticket_params)
    if ticket.save
      redirect_to board_path(ticket.board)
    else
      flash[:errors] = "You need a Title. #{ticket.errors.full_messages}"
      redirect_to :back
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:title, :description)
  end
end
