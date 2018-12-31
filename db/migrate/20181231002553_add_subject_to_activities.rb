class AddSubjectToActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :subject, :text
  end
end
