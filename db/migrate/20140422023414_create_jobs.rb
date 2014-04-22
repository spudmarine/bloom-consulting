class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :purpose
      t.text :responsibilities
      t.text :scope
      t.text :environmental
      t.text :education
      t.text :qualifications

      t.timestamps
    end
  end
end
