class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :suit
      t.string :type
      t.string :sub_type
      t.string :img_src

      t.timestamps
    end
  end
end
