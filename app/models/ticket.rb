class Ticket < ApplicationRecord
  belongs_to :project
  has_many :comments, as: :commentable, dependent: :destroy

  scope :open_tickets, -> { where(archived: false) }

  def archive
    self.archived = true
    save!
  end
end
