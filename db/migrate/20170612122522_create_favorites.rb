class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :micropost, null:false 
      
      t.timestamps
      t.index [:user_id, :follow_id], unique: true
    end
  end
end
