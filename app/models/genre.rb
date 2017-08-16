# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Genre < ApplicationRecord
  has_and_belongs_to_many :models

  def self.genres
    [ 'Acting',
      'Art',
      'Bodypaint',
      'Cosplay',
      'Editorial',
      'Fashion',
      'Fetish',
      'Fit',
      'Modeling',
      'Glamour',
      'Hair / Makeup',
      'Lifestyle',
      'Lingerie',
      'Parts',
      'Pinup',
      'Promotional',
      'Runway',
      'Spokesperson / Host',
      'Stunt',
      'Swimwear',
      'Underwater'
    ]
  end
end
