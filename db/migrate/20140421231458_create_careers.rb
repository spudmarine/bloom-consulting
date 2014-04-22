class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :hero_image
      t.string :hero_title
      t.text :hero_copy
      t.string :intro_title
      t.text :intro_title
      t.string :cta_title
      t.text :cta_copy

      t.timestamps
    end
  end
end
