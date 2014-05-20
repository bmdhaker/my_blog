class CreateCatgrades < ActiveRecord::Migration
  def change
    create_table :catgrades do |t|
      t.string :libcatgrade

      t.timestamps
    end
  end
end
