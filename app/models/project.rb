class Project < ApplicationRecord
  belongs_to :freelancer, class_name: "User"
  belongs_to :client, class_name: "User"
  has_many :tasks, dependent: :destroy
  has_many :tickets, dependent: :destroy
  has_many :announcements, dependent: :destroy
end
