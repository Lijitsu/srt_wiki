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
class Trick < ApplicationRecord
  has_many :games, through: :game_tricks

  validates :name, presence: true
  validates :discoverer, presence: true
  validates :description, presence: true
end
