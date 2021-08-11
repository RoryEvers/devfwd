class Profile < ApplicationRecord
  belongs_to :user
  has_many :jobs_to_create, class_name: "Job", foreign_key: "creator_id"
  has_many :volunteers
  has_many :jobs, through: :volunteers  
  has_one_attached :picture

  validates :user_name, length: { in: 2..100 }
end
