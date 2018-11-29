class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.integer :number
      t.string :name
      t.text :notes
      t.integer :objective_score
      t.integer :consistency
      t.integer :driver_skill
      t.text :issues
      t.integer :autonomous


      t.timestamps
    end
  end
end
