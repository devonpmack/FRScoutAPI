class ChangeTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :move_cargo, :boolean
    add_column :teams, :cargo_max, :integer
    add_column :teams, :cargo_pickup, :integer
    add_column :teams, :move_hatch, :boolean
    add_column :teams, :hatch_max, :integer
    add_column :teams, :hatch_pickup, :integer
    add_column :teams, :wheel_type, :string
    add_column :teams, :climb_level, :integer
    add_column :teams, :climb_notes, :string
    add_column :teams, :sandstorm_mode, :integer
    add_column :teams, :sandstorm_notes, :string
    add_column :teams, :defence, :integer
  end
end
