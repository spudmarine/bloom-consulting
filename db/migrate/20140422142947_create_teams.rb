class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :intro_title
      t.text :intro_copy

      t.timestamps
    end
  end
end
