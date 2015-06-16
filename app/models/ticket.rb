class Ticket < ActiveRecord::Base
  validates :title, :description, presence: true

  belongs_to :board

  after_initialize :default_status

  def default_status
    self.status ||= "Backlog" if self.new_record?
  end
end
