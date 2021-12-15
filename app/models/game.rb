# == Schema Information
#
# Table name: games
#
#  id           :bigint           not null, primary key
#  name         :string
#  overview     :text
#  platform     :string
#  release_date :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Game < ApplicationRecord
  belongs_to :series
  has_many :categories
  has_many :levels
  has_many :guides
  has_many :skips
  has_many :tricks, through: :game_tricks

  validates :name, presence: true
  validates :platform, presence: true
  validates :release_date, presence: true
end
