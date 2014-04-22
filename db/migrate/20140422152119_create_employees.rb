class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :employee_image
      t.string :name
      t.string :title
      t.text :bio
      t.string :linkedin
      t.string :twitter
      t.string :facebook

      t.timestamps
    end
  end
end
