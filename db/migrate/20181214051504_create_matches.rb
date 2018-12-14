class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :number
      t.integer :blue_alliance_1
	  t.integer :blue_alliance_2
	  t.integer :blue_alliance_3
	  t.integer :red_alliance_1
	  t.integer :red_alliance_2
	  t.integer :red_alliance_3
	  t.integer :red_score
	  t.integer :blue_score
      t.integer :red_ranking_points
	  t.integer :blue_ranking_points
      t.integer :winning_alliance

      t.timestamps
    end
  end
end
