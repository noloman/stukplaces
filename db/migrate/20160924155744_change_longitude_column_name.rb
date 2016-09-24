class ChangeLongitudeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :places, :longitue, :longitude
  end
end
