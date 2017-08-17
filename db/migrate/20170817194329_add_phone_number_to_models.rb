class AddPhoneNumberToModels < ActiveRecord::Migration[5.1]
  def change
  	add_column :models, :phone_number, :string
  end
end
