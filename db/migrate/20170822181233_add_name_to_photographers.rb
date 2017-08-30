class AddNameToPhotographers < ActiveRecord::Migration[5.1]
  def change
    add_column :photographers, :name, :string
  end
end
