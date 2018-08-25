class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.text :name
      t.text :content
      t.boolean :status, default: false
      t.text :image
      t.text :price
      t.text :address_num
      t.text :address_text
      t.text :address_text2
      t.integer :user_id
      t.text :category
      t.text :delivery
      t.timestamps
    end
  end
end
