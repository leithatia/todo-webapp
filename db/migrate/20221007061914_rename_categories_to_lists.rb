class RenameCategoriesToLists < ActiveRecord::Migration[7.0]
  def change
    rename_table :categories, :lists
    rename_column :tasks, :category_id, :list_id
  end
end
