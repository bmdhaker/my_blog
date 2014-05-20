class CreateFonctionns < ActiveRecord::Migration
  def change
    create_table :fonctionns do |t|
      t.string :name

      t.timestamps
    end
  end
end
