# == Schema Information
#
# Table name: levels
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Level < ApplicationRecord
  belongs_to :game
  has_many :skips

  attr_accessor :name, :overhead, :description

  validates :name, presence: true
  validates :description, presence: true
  validates :overhead, presence: true
end
