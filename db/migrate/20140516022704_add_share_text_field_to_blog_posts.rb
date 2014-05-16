class AddShareTextFieldToBlogPosts < ActiveRecord::Migration
  def change

    add_column :posts, :share_text, :string

  end
end
