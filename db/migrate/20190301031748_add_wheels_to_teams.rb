class AddWheelsToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :wheel_type, :string
  end
end
