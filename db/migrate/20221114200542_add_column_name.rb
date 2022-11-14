class AddColumnName < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :available, :boolean
  end
end