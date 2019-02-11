class CreateAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |t|
      t.string :title
      t.string :description
      t.integer :points
      t.integer :event_id

      t.timestamps
    end
  end
end
