class CreateSuccesses < ActiveRecord::Migration
  def change
    create_table :successes do |t|
      t.string :title
      t.string :author
      t.text :blurb
      t.string :article
      t.boolean :businessconsulting
      t.boolean :projectmanagement
      t.boolean :businessintelligence

      t.timestamps
    end
  end
end
