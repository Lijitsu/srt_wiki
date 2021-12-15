# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  overview   :text
#  platform   :string
#  rules      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  game_id    :bigint           not null
#
# Indexes
#
#  index_categories_on_game_id  (game_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#
class Category < ApplicationRecord
  has_many :guides
  belongs_to :game

  validates :name, presence: true
  validates :rules, presence: true
  validates :platform, presence: true
end
