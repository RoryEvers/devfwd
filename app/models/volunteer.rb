class Volunteer < ApplicationRecord
  belongs_to :profile
  belongs_to :job
end
