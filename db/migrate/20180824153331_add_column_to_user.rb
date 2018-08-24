class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change

  	add_column :users, :name ,:string
  	add_column :users, :address_num ,:integer
  	add_column :users, :address_text ,:text
  	add_column :users, :address_text2 ,:text
  	add_column :users, :provider ,:string
  	add_column :users, :uid ,:integer
  	add_column :users, :admin ,:boolean
  	add_column :users, :profile_img ,:string

  end
end
