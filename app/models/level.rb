# == Schema Information
#
# Table name: levels
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  game_id     :bigint           not null
#
# Indexes
#
#  index_levels_on_game_id  (game_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#
class Level < ApplicationRecord
  belongs_to :game
  has_many :skips

  validates :name, presence: true
  validates :description, presence: true
end
