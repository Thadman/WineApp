class CreateWineTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :wine_types do |t|
      t.string :variety

      t.timestamps
    end
  end
end
