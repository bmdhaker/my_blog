class CreateBrevets < ActiveRecord::Migration
  def change
    create_table :brevets do |t|
      t.string :name

      t.timestamps
    end
  end
end
