class AddCountryToModels < ActiveRecord::Migration[5.1]
  def change
    add_column :models, :country, :string
  end
end
