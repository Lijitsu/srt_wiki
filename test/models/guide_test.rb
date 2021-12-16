# == Schema Information
#
# Table name: guides
#
#  id           :bigint           not null, primary key
#  content      :text
#  creator      :string
#  game_version :string
#  name         :string
#  revision     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  category_id  :bigint           not null
#  game_id      :bigint           not null
#
# Indexes
#
#  index_guides_on_category_id  (category_id)
#  index_guides_on_game_id      (game_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (game_id => games.id)
#
require "test_helper"

class GuideTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
