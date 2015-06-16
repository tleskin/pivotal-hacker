class TicketsController < ApplicationController
  def new
    @ticket = Ticket.new
  end

  def create
    ticket = Ticket.new(ticket_params)
    ticket.board = Board.last
    if ticket.save
      redirect_to board_path(ticket.board)
    else
      flash[:errors] = "You need a Title. #{ticket.errors.full_messages}"
      redirect_to :back
    end
  end

  def update
    ticket = Ticket.find_by(id: params[:ticket_id])
    ticket.update_attributes(status: params[:status])
    redirect_to :back
  end

  private

  def ticket_params
    params.require(:ticket).permit(:title, :description, :status)
  end
end
