class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: { to_table: :users }
      t.references :tweet, null: false, foreign_key: { to_table: :tweets }
      t.text :content, null: false
      t.timestamps
    end
  end
end
