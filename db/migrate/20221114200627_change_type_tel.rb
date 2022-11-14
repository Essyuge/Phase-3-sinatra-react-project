class ChangeTypeTel < ActiveRecord::Migration[6.1]
  def change
    change_column :owners, :tel, :integer, limit: 8
  end 
end