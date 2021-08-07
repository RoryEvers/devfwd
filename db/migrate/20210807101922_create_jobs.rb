class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.date :end_date
      t.boolean :complete
      t.integer :creator_id
      t.integer :developer_id
      t.string :github
      t.string :discord
      t.string :trello
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
