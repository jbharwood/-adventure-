class AddCategoryIdToAchievements < ActiveRecord::Migration[5.2]
  def change
    add_column :achievements, :category_id, :integer
  end
end
