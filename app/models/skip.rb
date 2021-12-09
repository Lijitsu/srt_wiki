# == Schema Information
#
# Table name: skips
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Skip < ApplicationRecord
  belongs_to :game, :level

  attr_accessor :name, :game_version, :discoverer, :description, :video, :platform

  validates :name, presence: true
  validates :discoverer, presence: true
  validates :description, presence: true
  validates :video, presence: true
end
