class Match < ApplicationRecord
  validates :number, presence: true

  attribute :number, :integer
  attribute :blue_alliance_1, :integer
  attribute :blue_alliance_2, :integer
  attribute :blue_alliance_3, :integer
  attribute :red_alliance_1, :integer
  attribute :red_alliance_2, :integer
  attribute :red_alliance_3, :integer
  attribute :red_score, :integer
  attribute :blue_score, :integer
  attribute :red_ranking_points, :integer
  attribute :blue_ranking_points, :integer
  attribute :winning_alliance, :integer
end
