class RenameCategory < ActiveRecord::Migration[6.1]
  def change
    rename_column :articles, :category, :notes
  end
end
