class RemovePictureFromModels < ActiveRecord::Migration[5.1]
  def change
    remove_column :models, :picture
  end
end
