class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :address
      t.integer :realtor_id

      t.timestamps
    end
  end
end
