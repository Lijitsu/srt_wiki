# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  has_many :guides
  belongs_to :game

  attr_accessor :name, :rules, :leaderboard, :overview, :platform

  validates :name, presence: true
  validates :rules, presence: true
  validates :platform, presence: true
end
