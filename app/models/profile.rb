class Profile < ApplicationRecord
  # Profiles belong to a user who has made an account
  belongs_to :user
  # Profiles can create jobs 
  has_many :jobs_to_create, class_name: "Job", foreign_key: "creator_id"
  # Profiles can volunteer for jobs through the volunteer model
  has_many :volunteers
  has_many :jobs, through: :volunteers  
  # Profiles have one attached picture 
  has_one_attached :picture

  # All profiles must have a valid username
  validates :user_name, length: { in: 2..100 }
end
