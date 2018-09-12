class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :suit
      t.string :nature
      t.string :sub_nature
      t.string :img_src

      t.timestamps
    end
  end
end
