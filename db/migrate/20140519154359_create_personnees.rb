class CreatePersonnees < ActiveRecord::Migration
  def change
    create_table :personnees do |t|
      t.string :name
      t.belongs_to :fonctionn, index: true

      t.timestamps
    end
  end
end
