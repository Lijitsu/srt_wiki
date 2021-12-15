# == Schema Information
#
# Table name: games
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Game < ApplicationRecord
  belongs_to :series
  has_many :categories
  has_many :levels
  has_many :guides
  has_many :skips
  has_many :tricks, through: :game_tricks

  attr_accessor :name, :overview, :platform, :release_date, :box_art

  validates :name, presence: true
  validates :platform, presence: true
  validates :release_date, presence: true
end
