class Volunteer < ApplicationRecord
  # Volunteers belong to both a profile and a job
  belongs_to :profile
  belongs_to :job
end
