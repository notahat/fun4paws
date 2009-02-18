class AddLatLngToVolunteer < ActiveRecord::Migration
  def self.up
    add_column :volunteers, :lat, :float
    add_column :volunteers, :lng, :float
  end

  def self.down
    remove_column :volunteers, :lng
    remove_column :volunteers, :lat
  end
end
