class ChangePhoneColumnTypeInOffers < ActiveRecord::Migration[7.1]
  def change
    change_column :offers, :phone, :string
  end
end
