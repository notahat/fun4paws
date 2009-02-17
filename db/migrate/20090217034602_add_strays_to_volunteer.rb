class AddStraysToVolunteer < ActiveRecord::Migration
  def self.up
    add_column :volunteers, :will_take_stray, :boolean
  end

  def self.down
    remove_column :volunteers, :will_take_stray
  end
end
