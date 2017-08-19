class AddPictureToModels < ActiveRecord::Migration[5.1]
  def change
    add_column :models, :picture, :string
  end
end
