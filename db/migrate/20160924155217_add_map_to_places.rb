class AddMapToPlaces < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :latitude, :float
    add_column :places, :longitue, :float
  end
end
