class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :activity_type
      t.date :date
      t.time :duration
      t.float :cost
      t.integer :property_id
      t.text :detail
      t.text :outcome
      t.string :contact

      t.timestamps
    end
  end
end
