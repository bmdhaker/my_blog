class CreateJoint2s < ActiveRecord::Migration
  def change
    create_table :joint2s do |t|
      t.integer :per_id
      t.integer :brevet_id
      t.datetime :appointment_date
      t.string :name

      t.timestamps
    end
  end
end
