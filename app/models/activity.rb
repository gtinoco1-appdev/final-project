# == Schema Information
#
# Table name: activities
#
#  id               :integer          not null, primary key
#  activity_type_id :integer
#  duration         :time
#  cost             :float
#  property_id      :integer
#  detail           :text
#  outcome          :text
#  contact          :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  length           :integer
#  date2            :date
#  subject          :text
#

class Activity < ApplicationRecord
    belongs_to :property
    belongs_to :activity_type
end
