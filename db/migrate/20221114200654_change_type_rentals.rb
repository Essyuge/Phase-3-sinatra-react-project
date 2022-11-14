class ChangeTypeRentals < ActiveRecord::Migration[6.1]
  def change
    change_column :rentals, :price, :integer, limit: 8
  end
end
