class AddDogSafeGatesToVolunteer < ActiveRecord::Migration
  def self.up
    add_column :volunteers, :dog_safe_gates, :string
  end

  def self.down
    remove_column :volunteers, :dog_safe_gates
  end
end
