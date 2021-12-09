# == Schema Information
#
# Table name: resources
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Resource < ApplicationRecord
  attr_accessor :name

  validates :name, presence: true
end
