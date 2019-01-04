class RemoveDurationFromActivities < ActiveRecord::Migration[5.1]
  def change
    remove_column :activities, :duration
  end
end

