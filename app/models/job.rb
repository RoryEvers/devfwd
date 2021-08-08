class Job < ApplicationRecord
  # belongs_to :profile
  # belongs_to :developer, class_name: "Profile", optional: true
  belongs_to :creator, class_name: "Profile"
  
  # has many profiles through current devs
def current_volunteer
  
end

end
