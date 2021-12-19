# == Schema Information
#
# Table name: resources
#
#  id          :bigint           not null, primary key
#  description :text
#  link        :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Resource < ApplicationRecord

  validates :name, presence: true
end
