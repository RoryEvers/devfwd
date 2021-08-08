class Profile < ApplicationRecord
  belongs_to :user
  has_many :jobs_to_create, class_name: "Job", foreign_key: "creator_id"
  has_many :jobs_to_do, class_name: "Job", foreign_key: "developer_id"

  # has many jobs through current devs
end
