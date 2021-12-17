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
#  series_id    :bigint           not null
#
# Indexes
#
#  index_games_on_series_id  (series_id)
#
# Foreign Keys
#
#  fk_rails_...  (series_id => series.id)
#
class Game < ApplicationRecord
  belongs_to :series
  has_many :categories
  has_many :levels
  has_many :guides
  has_many :skips
  has_many :tricks, through: :game_tricks
  has_many :game_tricks
  accepts_nested_attributes_for :game_tricks, allow_destroy: true

  validates :name, presence: true
  validates :platform, presence: true
  validates :release_date, presence: true
end
