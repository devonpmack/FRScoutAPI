class AddWheelsToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :wheelType, :string
  end
end
