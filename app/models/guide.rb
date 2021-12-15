# == Schema Information
#
# Table name: guides
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Guide < ApplicationRecord
  belongs_to :game
  belongs_to :category

  attr_accessor :name, :revision, :game_version, :creator

  validates :name, presence: true
  validates :revision, presence: true
end
