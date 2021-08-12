class Job < ApplicationRecord
  # Jobs belong to their creator via the class Profile
  belongs_to :creator, class_name: "Profile"
  # Jobs have many profiles through volunteers.
  # If a job is destroyed, then destroy will be called on its associated volunteers.
  has_many :volunteers, dependent: :destroy
  has_many :profiles, through: :volunteers
# All jobs must have a title, and a valid start and end date
  validates :title, length: { in: 2..100 }
  validates_date :start_date, on: :create, on_or_after: :today
  validates_datetime :end_date, after: :start_date 
end
