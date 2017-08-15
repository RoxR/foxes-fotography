class CreateJoinTableModelGenre < ActiveRecord::Migration[5.1]
  def change
    create_join_table :models, :genres do |t|
      t.index [:model_id, :genre_id]
      t.index [:genre_id, :model_id]
    end
  end
end
