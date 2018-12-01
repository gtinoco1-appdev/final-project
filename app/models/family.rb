# == Schema Information
#
# Table name: families
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photo      :string
#

class Family < ApplicationRecord
  has_many :corals, :dependent => :destroy
  has_many :family_comments, :dependent => :destroy
end
