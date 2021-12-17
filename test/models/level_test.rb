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
require "test_helper"

class LevelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
