# == Schema Information
#
# Table name: tricks
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Trick < ApplicationRecord
  belongs_to :series
  has_many :games, through: :game_tricks

  attr_accessor :name, :game_version, :discoverer, :description, :video, :platform

  validates :name, presence: true
  validates :discoverer, presence: true
  validates :description, presence: true
  validates :video, presence: true
end
