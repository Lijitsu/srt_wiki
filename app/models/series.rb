# == Schema Information
#
# Table name: series
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Series < ApplicationRecord
  has_many :games

  attr_accessor :name

  validates :name, presence: true
end
