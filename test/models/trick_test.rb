# == Schema Information
#
# Table name: tricks
#
#  id           :bigint           not null, primary key
#  description  :text
#  discoverer   :string
#  game_version :string
#  name         :string
#  platform     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class TrickTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
