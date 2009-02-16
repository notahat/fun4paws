class AddEmailAddressToVolunteers < ActiveRecord::Migration
  def self.up
    add_column :volunteers, :email_address, :string
  end

  def self.down
    remove_column :volunteers, :email_address
  end
end
