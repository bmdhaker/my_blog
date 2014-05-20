class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :libgrade
      t.references :catgrade, index: true

      t.timestamps
    end
  end
end
