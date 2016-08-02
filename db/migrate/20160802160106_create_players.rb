class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.string :p_team
      t.text :notes
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
