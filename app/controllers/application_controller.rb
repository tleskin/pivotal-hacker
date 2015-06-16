class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :backlog_tickets,
                :sprint_tickets,
                :in_progress_tickets,
                :done_tickets

  def backlog_tickets
    Ticket.where(status: "Backlog")
  end

  def sprint_tickets
    Ticket.where(status: "Current Sprint")
  end

  def in_progress_tickets
    Ticket.where(status: "In Progress")
  end

  def done_tickets
    Ticket.where(status: "Done")
  end
end
