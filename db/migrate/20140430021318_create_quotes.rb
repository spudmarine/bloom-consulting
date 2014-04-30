class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
    	t.string :title
    	t.text :quote
    	t.string :credit

      t.timestamps
    end
  end
end
