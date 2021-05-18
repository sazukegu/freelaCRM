class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :quotations, dependent: :destroy
  has_many :projects_as_freelancer, class_name: "Project", foreign_key: "freelancer_id"
  has_many :projects_as_client, class_name: "Project", foreign_key: "client_id"
end
