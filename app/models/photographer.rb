# == Schema Information
#
# Table name: photographers
#
#  id   :integer          not null, primary key
#  name :string
#

class Photographer < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { minimum: 3 }
end
