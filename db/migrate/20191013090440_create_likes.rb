class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: { to_table: :users }
      t.references :like, foreign_key: { to_table: :users }

      t.timestamps
      
      t.index [:user_id, :like_id], unique: true
      t.timestamps
    end
  end
end
