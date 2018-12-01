class CreateCorals < ActiveRecord::Migration[5.1]
  def change
    create_table :corals do |t|
      t.string :title
      t.integer :family_id
      t.integer :location_id
      t.string :caption
      t.string :photo1
      t.string :photo2
      t.integer :seller_id
      t.float :price
      t.string :obo

      t.timestamps
    end
  end
end
