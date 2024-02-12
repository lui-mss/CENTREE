class AddUserIdToEStorages < ActiveRecord::Migration[7.1]
  def change
    add_reference :e_storages, :user, null: false, foreign_key: true
  end
end
