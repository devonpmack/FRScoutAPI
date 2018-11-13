class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.int :number
      t.string :name
      t.text :notes
      t.int :objective_score
      t.int :consistency
      t.int :driver_skill
      t.text :issues


      t.timestamps
    end
  end
end
