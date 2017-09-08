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
#  confirmed    :boolean          default(FALSE)
#  phone_number :string
#  email        :string
#

require 'rails_helper'

RSpec.describe Model, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
