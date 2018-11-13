class Team < ApplicationRecord
  validates :number, presence: true

  attribute :number, :integer
  attribute :name, :string
  attribute :notes, :string
  attribute :objective_score, :integer
  attribute :consistency, :integer
  attribute :driver_skill, :integer
  attribute :issues, :string
end
