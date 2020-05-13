class AddWineTypeRefToListings < ActiveRecord::Migration[6.0]
  def change
    add_reference :listings, :wine_type, null: false, foreign_key: true
  end
end
