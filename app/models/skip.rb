# == Schema Information
#
# Table name: skips
#
#  id           :bigint           not null, primary key
#  description  :text
#  discoverer   :string
#  game_version :string
#  name         :string
#  platform     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  game_id      :bigint           not null
#  level_id     :bigint           not null
#
# Indexes
#
#  index_skips_on_game_id   (game_id)
#  index_skips_on_level_id  (level_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#  fk_rails_...  (level_id => levels.id)
#
class Skip < ApplicationRecord
  belongs_to :game
  belongs_to :level

  validates :name, presence: true
  validates :discoverer, presence: true
  validates :description, presence: true
end
