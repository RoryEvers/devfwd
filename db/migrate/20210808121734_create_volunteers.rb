class CreateVolunteers < ActiveRecord::Migration[6.0]
  def change
    create_table :volunteers do |t|
      t.references :profile, foreign_key: true
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
