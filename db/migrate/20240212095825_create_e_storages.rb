class CreateEStorages < ActiveRecord::Migration[7.1]
  def change
    create_table :e_storages do |t|
      t.string :name
      t.text :description
      t.string :cloudinary_url

      t.timestamps
    end
  end
end
