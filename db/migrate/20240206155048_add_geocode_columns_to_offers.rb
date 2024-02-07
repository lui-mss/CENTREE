class AddGeocodeColumnsToOffers < ActiveRecord::Migration[7.1]
  def change
    add_column :offers, :latitude, :float
    add_column :offers, :longitude, :float
  end
end
