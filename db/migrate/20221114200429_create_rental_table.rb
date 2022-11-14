class CreateRentalTable < ActiveRecord::Migration[6.1]
  def change
   create_table :rentals do |t|
   t.string :name
   t.string :description
   t.string :image
   t.string :location
   t.integer :price
   t.integer :owner_id
   end
  end
end