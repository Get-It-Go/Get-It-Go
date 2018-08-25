class AddColumnToMessgae < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :converstion_id ,:integer
  end
end
