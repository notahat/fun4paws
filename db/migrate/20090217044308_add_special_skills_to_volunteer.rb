class AddSpecialSkillsToVolunteer < ActiveRecord::Migration
  def self.up
    add_column :volunteers, :special_skills, :string
  end

  def self.down
    remove_column :volunteers, :special_skills
  end
end
