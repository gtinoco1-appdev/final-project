class CreateCoralComments < ActiveRecord::Migration[5.1]
  def change
    create_table :coral_comments do |t|
      t.integer :coral_id
      t.integer :commenter_id

      t.timestamps
    end
  end
end
