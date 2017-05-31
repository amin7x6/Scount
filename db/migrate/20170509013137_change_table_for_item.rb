class ChangeTableForItem < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :sku, :string
    remove_column :items, :notes, :text
    add_column :items, :reorderLevel, :integer
    add_column :items, :reorderTime, :integer
    add_column :items, :delivered, :integer, default: 0
    add_column :items, :pickup, :integer, default: 0
    add_column :items, :arrive, :integer, default: 0
    add_column :items, :adjust, :integer, default: 0
    add_column :items, :convert, :integer, default: 0
    add_column :items, :total, :integer, default: 0
    add_column :items, :barcode, :string
  end
end
