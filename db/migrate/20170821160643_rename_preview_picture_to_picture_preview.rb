class RenamePreviewPictureToPicturePreview < ActiveRecord::Migration[5.1]
  def change
    rename_column :pictures, :preview_picture, :picture_preview
  end
end
