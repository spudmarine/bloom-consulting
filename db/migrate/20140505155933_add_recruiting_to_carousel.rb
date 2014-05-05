class AddRecruitingToCarousel < ActiveRecord::Migration
  def change
  	add_column :carousels, :recruiting, :boolean
  end
end
