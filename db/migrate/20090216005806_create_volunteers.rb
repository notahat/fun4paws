class CreateVolunteers < ActiveRecord::Migration
  def self.up
    create_table :volunteers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :suburb
      t.string :postcode
      t.string :mobile_phone
      t.string :home_phone
      t.string :work_phone

      t.timestamps
    end
  end

  def self.down
    drop_table :volunteers
  end
end
