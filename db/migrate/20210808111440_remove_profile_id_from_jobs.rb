class RemoveProfileIdFromJobs < ActiveRecord::Migration[6.0]
  def change
    remove_column :jobs, :profile_id, :integer
  end
end
