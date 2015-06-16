require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it "must have a title" do
    ticket = Ticket.create(title: nil, description: "Description", status: "Backlog")
    expect(ticket).to_not be_valid
  end

  it "must have a description" do
    ticket = Ticket.create(title: "Title", description: nil, status: "Backlog")
    expect(ticket).to_not be_valid
  end

  it "has a default status of Backlog" do
    ticket = Ticket.create(title: "Title", description: "Description")
    expect(ticket.status).to eq("Backlog")
  end
end
