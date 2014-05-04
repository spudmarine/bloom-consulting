class RemoveTypeFromEvents < ActiveRecord::Migration
  def change
  	remove_column :events, :type
  	add_column :events, :description, :string
  end
end
