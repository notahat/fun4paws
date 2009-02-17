class AddCanAdministerMedicalCareToVolunteer < ActiveRecord::Migration
  def self.up
    add_column :volunteers, :can_administer_medical_care, :boolean
  end

  def self.down
    remove_column :volunteers, :can_administer_medical_care
  end
end
