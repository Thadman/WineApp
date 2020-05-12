class CreateGrapes < ActiveRecord::Migration[6.0]
  def change
    create_table :grapes do |t|
      t.string :grape_type

      t.timestamps
    end
  end
end
