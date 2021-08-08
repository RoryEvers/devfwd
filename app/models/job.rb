class Job < ApplicationRecord
  # belongs_to :profile
  # belongs_to :developer, class_name: "Profile", optional: true
  belongs_to :creator, class_name: "Profile"
  has_many :volunteers
  has_many :profiles, through: :volunteers
  # has_many :developers, through: :volunteers, class_name: "Profile"

end
