class Job < ApplicationRecord
  belongs_to :creator, class_name: "Profile"
  has_many :volunteers, dependent: :destroy
  has_many :profiles, through: :volunteers


end
