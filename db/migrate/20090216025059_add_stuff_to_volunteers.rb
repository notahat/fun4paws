class AddStuffToVolunteers < ActiveRecord::Migration
  def self.up
    add_column :volunteers, :can_keep_dogs, :integer
    add_column :volunteers, :can_keep_cats, :integer
    add_column :volunteers, :can_keep_other, :string
    add_column :volunteers, :can_keep_inside_initially, :boolean
    add_column :volunteers, :can_sleep_inside_ongoing, :boolean
    add_column :volunteers, :dogs_owned, :integer
    add_column :volunteers, :cats_owned, :integer
    add_column :volunteers, :other_owned, :string
    add_column :volunteers, :hours_spent_at_home_per_day, :integer
    add_column :volunteers, :children, :integer
    add_column :volunteers, :children_ages, :string
    add_column :volunteers, :can_transport, :boolean
    add_column :volunteers, :requires_financial_support, :boolean
    add_column :volunteers, :can_administer_medical, :boolean
    add_column :volunteers, :offer_duration, :integer
  end

  def self.down
    remove_column :volunteers, :offer_duration
    remove_column :volunteers, :can_administer_medical
    remove_column :volunteers, :requires_financial_support
    remove_column :volunteers, :can_transport
    remove_column :volunteers, :children_ages
    remove_column :volunteers, :children
    remove_column :volunteers, :hours_spent_at_home_per_day
    remove_column :volunteers, :other_owned
    remove_column :volunteers, :cats_owned
    remove_column :volunteers, :dogs_owned
    remove_column :volunteers, :can_sleep_inside_ongoing
    remove_column :volunteers, :can_keep_inside_initially
    remove_column :volunteers, :can_keep_other
    remove_column :volunteers, :can_keep_cats
    remove_column :volunteers, :can_keep_dogs
  end
end
