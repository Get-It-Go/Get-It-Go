class CreateConverstions < ActiveRecord::Migration[5.1]
  def change
    create_table :converstions do |t|
      t.integer :user1_id
      t.integer :user2_id
      t.integer :product_id

      t.timestamps
    end
  end
end
