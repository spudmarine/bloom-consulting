class AddSortingToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :sortorder, :integer
  end
end
