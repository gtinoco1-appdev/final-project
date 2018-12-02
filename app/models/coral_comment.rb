# == Schema Information
#
# Table name: coral_comments
#
#  id           :integer          not null, primary key
#  coral_id     :integer
#  commenter_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  body         :text
#

class CoralComment < ApplicationRecord
belongs_to :commenter, :class_name => "User"
belongs_to :coral

end
