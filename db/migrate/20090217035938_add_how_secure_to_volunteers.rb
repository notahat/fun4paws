class AddHowSecureToVolunteers < ActiveRecord::Migration
  def self.up
    add_column :volunteers, :how_secure, :string
  end

  def self.down
    remove_column :volunteers, :how_secure
  end
end
