class Job < ApplicationRecord
  belongs_to :creator, class_name: "Profile"
  has_many :volunteers, dependent: :destroy
  has_many :profiles, through: :volunteers

  validates :title, length: { in: 2..100 }
  validates_date :start_date, on: :create, on_or_after: :today
  validates_datetime :end_date, after: :start_date 
end
