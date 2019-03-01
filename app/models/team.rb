class Team < ApplicationRecord
  validates :number, presence: true

  attribute :number, :integer
  attribute :name, :string
  attribute :notes, :string
  attribute :objective_score, :integer
  attribute :consistency, :integer
  attribute :driver_skill, :integer
  attribute :autonomous, :integer
  attribute :issues, :string
  attribute :defence, :integer
  attribute :move_cargo, :boolean
  attribute :cargo_max, :integer
  attribute :cargo_pickup, :integer
  attribute :move_hatch, :boolean
  attribute :hatch_max, :integer
  attribute :hatch_pickup, :integer
  attribute :climb_level, :integer
  attribute :climb_notes, :string
  attribute :sandstorm_mode, :integer
  attribute :sandstorm_notes, :string
end
