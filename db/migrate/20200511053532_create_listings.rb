class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :vintage
      t.string :region
      t.string :grape
      t.text :notes
      t.text :description
      t.string :alcohol
      t.string :size
      t.string :type
      t.integer :price

      t.timestamps
    end
  end
end
