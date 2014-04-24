class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.text :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
