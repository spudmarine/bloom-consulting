class AddFieldsToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :area1_title, :string
    add_column :jobs, :area1_copy, :text
    add_column :jobs, :area2_title, :string
    add_column :jobs, :area2_copy, :text
    add_column :jobs, :area3_title, :string
    add_column :jobs, :area3_copy, :text
    add_column :jobs, :area4_title, :string
    add_column :jobs, :area4_copy, :text
    add_column :jobs, :area5_title, :string
    add_column :jobs, :area5_copy, :text
    add_column :jobs, :area6_title, :string
    add_column :jobs, :area6_copy, :text
    add_column :jobs, :area7_title, :string
    add_column :jobs, :area7_copy, :text

    remove_column :jobs, :responsibilities

  end
end
