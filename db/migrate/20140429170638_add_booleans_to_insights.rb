class AddBooleansToInsights < ActiveRecord::Migration
  def change
  	add_column :insights, :businessconsulting, :boolean
  	add_column :insights, :projectmanagement, :boolean
  	add_column :insights, :businessintelligence, :boolean
  end
end
