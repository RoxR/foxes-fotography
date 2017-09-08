# == Schema Information
#
# Table name: inquiries
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#  email      :string
#  phone      :string
#  facebook   :string
#  message    :text
#

class Inquiry < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :message, presence: true
end
