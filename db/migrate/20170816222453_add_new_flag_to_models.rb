class AddNewFlagToModels < ActiveRecord::Migration[5.1]
  def change
    add_column :models, :new, :boolean, default: true
  end
end
