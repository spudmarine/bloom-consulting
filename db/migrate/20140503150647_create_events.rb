class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :location
      t.string :type
      t.date :date
      t.string :link

      t.timestamps
    end
  end
end
