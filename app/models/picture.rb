class Picture < ApplicationRecord
  validates_size_of :picture_1, maximum: 10.megabytes, message: "Picture 1 is over 10 megabytes"
  validates_size_of :picture_2, maximum: 10.megabytes, message: "Picture 2 is over 10 megabytes"
  validates_size_of :picture_3, maximum: 10.megabytes, message: "Picture 3 is over 10 megabytes"
  validates_size_of :picture_preview, maximum: 10.megabytes, message: "Picture preview is over 10 megabytes"

  mount_uploader :picture_1, PictureUploader
  mount_uploader :picture_2, PictureUploader
  mount_uploader :picture_3, PictureUploader
  mount_uploader :picture_preview, PictureUploader
  belongs_to :model
end
