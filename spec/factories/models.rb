# == Schema Information
#
# Table name: models
#
#  id           :integer          not null, primary key
#  name         :string
#  height       :string
#  weight       :string
#  bust         :string
#  waist        :string
#  hips         :string
#  cup          :string
#  dress        :string
#  shoe         :string
#  hair_color   :string
#  hair_length  :string
#  eye_color    :string
#  ethnicity    :string
#  skin_color   :string
#  nudes        :boolean
#  tattoos      :string
#  piercings    :string
#  experience   :string
#  compensation :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  gender       :integer
#  country      :string
#  new          :boolean          default(TRUE)
#

FactoryGirl.define do
  factory :model do
    name "MyString"
    height "MyString"
    weight "MyString"
    bust "MyString"
    waist "MyString"
    hips "MyString"
    cup "MyString"
    dress "MyString"
    shoe "MyString"
    hair_color "MyString"
    hair_length "MyString"
    eye_color "MyString"
    ethnicity "MyString"
    skin_color "MyString"
    nudes false
    tattoos "MyString"
    piercings "MyString"
    experience "MyString"
    compensation "MyString"
  end
end
