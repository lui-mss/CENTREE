class CreateChatrooms < ActiveRecord::Migration[7.1]
  def change
    create_table :chatrooms do |t|
      t.string :name
      t.references :contributor, foreign_key: { to_table: :users }
      t.references :migrant, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
