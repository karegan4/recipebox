class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.integer :recipe_id
      t.integer :user_id
    end
  end
end
