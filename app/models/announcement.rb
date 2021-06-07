class Announcement < ApplicationRecord
  belongs_to :project
  has_many :comments, as: :commentable, dependent: :destroy
end
