class RemoveDeveloperIdFromJobs < ActiveRecord::Migration[6.0]
  def change
    remove_column :jobs, :developer_id, :integer
  end
end
