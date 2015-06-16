class Ticket < ActiveRecord::Base
  validates :title, :description, presence: true

  after_initialize :default_password

  def default_password
    self.status ||= "Backlog" if self.new_record?
  end
end
