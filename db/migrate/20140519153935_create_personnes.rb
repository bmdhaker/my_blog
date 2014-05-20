class CreatePersonnes < ActiveRecord::Migration
  def change
    create_table :personnes do |t|
      t.string :nom
      t.belongs_to :fonction, index: true

      t.timestamps
    end
  end
end
