class AddGenderToModels < ActiveRecord::Migration[5.1]
  def change
    add_column :models, :gender, :integer
  end
end
