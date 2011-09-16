class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name, :null => false
      t.decimal :price, :null => false
      t.integer :quantity, :null => false
      t.date :released_at, :null => false
      t.datetime :last_purchase_at, :null => false
      t.timestamp :last_sale_at, :null => false
    end
  end

  def self.down
    drop_table :products
  end
end
