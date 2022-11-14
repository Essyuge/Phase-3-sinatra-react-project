class CreateOwnerTable < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
    t.string :name
    t.string :email
    t.integer :tel
    t.string :password_digest
    end
  end
end