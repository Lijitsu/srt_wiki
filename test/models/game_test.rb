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
require "test_helper"

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
