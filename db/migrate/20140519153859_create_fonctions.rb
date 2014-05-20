class CreateFonctions < ActiveRecord::Migration
  def change
    create_table :fonctions do |t|
      t.string :libfonction

      t.timestamps
    end
  end
end
