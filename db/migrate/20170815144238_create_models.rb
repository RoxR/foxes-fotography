class CreateModels < ActiveRecord::Migration[5.1]
  def change
    create_table :models do |t|
      t.string :name
      t.string :height
      t.string :weight
      t.string :bust
      t.string :waist
      t.string :hips
      t.string :cup
      t.string :dress
      t.string :shoe
      t.string :hair_color
      t.string :hair_length
      t.string :eye_color
      t.string :ethnicity
      t.string :skin_color
      t.boolean :nudes
      t.string :tattoos
      t.string :piercings
      t.string :experience
      t.string :compensation

      t.timestamps
    end
  end
end
