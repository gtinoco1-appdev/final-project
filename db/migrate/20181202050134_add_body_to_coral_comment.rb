class AddBodyToCoralComment < ActiveRecord::Migration[5.1]
  def change
    add_column :coral_comments, :body, :text
  end
end
