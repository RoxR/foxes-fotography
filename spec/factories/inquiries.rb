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

FactoryGirl.define do
  factory :inquiry do
    
  end
end
