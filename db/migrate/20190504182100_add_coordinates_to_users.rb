class AddCoordinatesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address, :string
    add_column :users, :address_complement, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
  end
end
