# == Schema Information
#
# Table name: pictures
#
#  id              :integer          not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  model_id        :integer
#  picture_1       :string
#  picture_2       :string
#  picture_3       :string
#  picture_preview :string
#

require 'rails_helper'

RSpec.describe Picture, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
