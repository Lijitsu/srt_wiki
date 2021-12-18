# == Schema Information
#
# Table name: game_tricks
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  game_id    :bigint           not null
#  trick_id   :bigint           not null
#
# Indexes
#
#  index_game_tricks_on_game_id   (game_id)
#  index_game_tricks_on_trick_id  (trick_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#  fk_rails_...  (trick_id => tricks.id)
#
class GameTrick < ApplicationRecord
  belongs_to :game
  belongs_to :trick
end
