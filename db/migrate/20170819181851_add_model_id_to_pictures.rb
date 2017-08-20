class AddModelIdToPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :model_id, :integer
  end
end
