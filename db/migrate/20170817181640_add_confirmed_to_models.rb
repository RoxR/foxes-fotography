class AddConfirmedToModels < ActiveRecord::Migration[5.1]
  def change
  	add_column :models, :confirmed, :boolean, default: false
  end
end
