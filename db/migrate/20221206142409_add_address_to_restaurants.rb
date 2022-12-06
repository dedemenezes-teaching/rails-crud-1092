class AddAddressToRestaurants < ActiveRecord::Migration[7.0]
  def change
    # add_column :table_name, :column_name, :column_type
    add_column :restaurants, :address, :string
  end
end
