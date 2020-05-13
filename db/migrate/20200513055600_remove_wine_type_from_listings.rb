class RemoveWineTypeFromListings < ActiveRecord::Migration[6.0]
  def change
    remove_column :listings, :wine_type, :string
  end
end
