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
require "test_helper"

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
