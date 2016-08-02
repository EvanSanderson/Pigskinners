class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :owner
      t.string :img_url
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
