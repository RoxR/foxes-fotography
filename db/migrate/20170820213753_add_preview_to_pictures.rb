class AddPreviewToPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :preview_picture, :string
  end
end
