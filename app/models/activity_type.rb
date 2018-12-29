# == Schema Information
#
# Table name: activity_types
#
#  id             :integer          not null, primary key
#  title          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  cost_toggle    :string
#  length_toggle  :string
#  detail_toggle  :string
#  outcome_toggle :string
#  contact_toggle :string
#

class ActivityType < ApplicationRecord
end
