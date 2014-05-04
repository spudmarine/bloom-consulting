class AddEventHeaderToCareers < ActiveRecord::Migration
  def change
  	add_column :careers, :event_header, :string
  	add_column :careers, :event_intro, :string
  	
  end
end
