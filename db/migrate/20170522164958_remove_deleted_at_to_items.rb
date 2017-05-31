class RemoveDeletedAtToItems < ActiveRecord::Migration[5.0]
  def change
    remove_index :items, :deleted_at
    remove_column :items, :deleted_at, :datetime
  end
end
