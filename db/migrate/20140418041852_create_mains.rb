class CreateMains < ActiveRecord::Migration
  def change
    create_table :mains do |t|
      t.string :hero_image
      t.string :hero_title
      t.string :stratum_1_image
      t.string :stratum_1_title
      t.text :stratum_1_copy
      t.string :stratum_1_cta
      t.string :stratum_1_link
      t.string :practice_area_1_image
      t.string :practice_area_1_title
      t.text :practice_area_1_copy
      t.string :practice_area_1_link
      t.string :practice_area_2_image
      t.string :practice_area_2_title
      t.text :practice_area_2_copy
      t.string :practice_area_2_link
      t.string :practice_area_3_image
      t.string :practice_area_3_title
      t.text :practice_area_3_copy
      t.string :practice_area_3_link
      t.string :stratum_2_image
      t.string :stratum_2_title
      t.text :stratum_2_copy
      t.string :stratum_2_cta
      t.string :stratum_2_link

      t.timestamps
    end
  end
end
