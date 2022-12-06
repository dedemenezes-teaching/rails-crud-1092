class RemoveCuisineFromRestaurants < ActiveRecord::Migration[7.0]
  def change
    remove_column :restaurants, :cuisine, :string
  end
end
