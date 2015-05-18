class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :announcement_1_image
      t.string :announcement_1_title
      t.text :announcement_1_copy
      t.string :announcement_1_cta
      t.string :announcement_1_link
      t.string :announcement_2_image
      t.string :announcement_2_title
      t.text :announcement_2_copy
      t.string :announcement_2_cta
      t.string :announcement_2_link

      t.timestamps
    end
  end
end
