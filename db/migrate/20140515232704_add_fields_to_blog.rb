class AddFieldsToBlog < ActiveRecord::Migration
  def change

    add_column :posts, :date, :date
    add_column :posts, :author, :string

  end
end
