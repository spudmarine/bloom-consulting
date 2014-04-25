class CreateInsights < ActiveRecord::Migration
  def change
    create_table :insights do |t|
      t.string :title
      t.string :author
      t.text :blurb
      t.string :article

      t.timestamps
    end
  end
end
