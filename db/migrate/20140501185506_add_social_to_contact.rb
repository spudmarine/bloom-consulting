class AddSocialToContact < ActiveRecord::Migration
  def change

    add_column :contacts, :twitter, :string
    add_column :contacts, :facebook, :string
    add_column :contacts, :linkedin, :string

  end
end
