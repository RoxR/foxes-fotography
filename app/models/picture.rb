class Picture < ApplicationRecord
  mount_uploader :picture_1, PictureUploader
  mount_uploader :picture_2, PictureUploader
  mount_uploader :picture_3, PictureUploader
  belongs_to :model
end
