class AddUsersToTeamsAndPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :user_id, :integer
    add_column :players, :user_id, :integer
  end
end
