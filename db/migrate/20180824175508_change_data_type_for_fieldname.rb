class ChangeDataTypeForFieldname < ActiveRecord::Migration[5.1]
  def change
   change_table :users do |t|
      t.change :uid, :text
    end
  end
end
