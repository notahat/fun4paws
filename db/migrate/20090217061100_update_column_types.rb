class UpdateColumnTypes < ActiveRecord::Migration
  def self.up
    change_column :volunteers, :dog_safe_gates, :boolean
    remove_column :volunteers, :can_administer_medical
  end
  
  def self.down
    change_column :volunteers, :dog_safe_gates, :string
    add_column :volunteers, :can_administer_medical, :string
  end
end
