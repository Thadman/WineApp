class RemoveGrapeFromListings < ActiveRecord::Migration[6.0]
  def change
    remove_column :listings, :grape, :string
  end
end
