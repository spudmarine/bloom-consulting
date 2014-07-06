class AddToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :alt, :string, default: ""
    add_column :posts, :hint, :string, default: ""
  end
end
