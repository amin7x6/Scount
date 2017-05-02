class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :sku
      t.string :unit
      t.string :pkg
      t.text :description
      t.integer :quantity
      t.text :notes

      t.timestamps
    end
  end
end
