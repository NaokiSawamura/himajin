class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.references :user, foreign_key: { to_table: :users }
      t.references :room, foreign_key: { to_table: :rooms }
      t.timestamps
    end
  end
end
