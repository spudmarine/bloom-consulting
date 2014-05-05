class CreateCarousels < ActiveRecord::Migration
  def change
    create_table :carousels do |t|
      t.string :image
      t.string :title
      t.boolean :culture
      t.boolean :overview
      t.boolean :consulting
      t.boolean :pm
      t.boolean :bi

      t.timestamps
    end
  end
end
