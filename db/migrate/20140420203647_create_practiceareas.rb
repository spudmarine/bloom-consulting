class CreatePracticeareas < ActiveRecord::Migration
  def change
    create_table :practiceareas do |t|
      t.string :hero_image
      t.string :hero_title
      t.text :hero_copy
      t.string :pa1_title
      t.text :pa1_copy
      t.string :pa2_title
      t.text :pa2_copy
      t.string :pa3_title
      t.text :pa3_copy

      t.timestamps
    end
  end
end
