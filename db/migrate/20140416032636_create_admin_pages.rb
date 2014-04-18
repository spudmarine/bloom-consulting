class CreateAdminPages < ActiveRecord::Migration
  def change
    create_table :admin_pages do |t|
      t.string :name
      t.string :permalink
      t.text :content

      t.timestamps
    end
    add_index :admin_pages, :permalink
  end
end
