class AddPicturesToPictures < ActiveRecord::Migration[5.1]
  def change
    remove_column :pictures, :picture
    add_column :pictures, :picture_1, :string
    add_column :pictures, :picture_2, :string
    add_column :pictures, :picture_3, :string
  end
end
