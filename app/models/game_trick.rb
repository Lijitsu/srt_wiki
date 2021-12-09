# == Schema Information
#
# Table name: game_tricks
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class GameTrick < ApplicationRecord
  belongs_to :games, :tricks
end
