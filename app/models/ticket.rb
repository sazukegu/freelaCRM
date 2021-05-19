class Ticket < ApplicationRecord
  belongs_to :project

  scope :open_tickets, -> { where(archived: false) }

  def archive
    self.archived = true
    save!
  end
end
