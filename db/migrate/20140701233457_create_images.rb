class CreateImages < ActiveRecord::Migration
  def change
  	drop_table :images 

    create_table :images do |t|
      t.string     :alt,  default: ""
      t.string     :hint, default: ""
      t.attachment :file
      t.timestamps
    end
  end
end
