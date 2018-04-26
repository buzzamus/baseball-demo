class CreatePositionPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :position_players do |t|
      t.string :name
      t.string :position
      t.integer :singles
      t.integer :doubles
      t.integer :triples
      t.integer :hr
      t.integer :at_bats
      t.integer :walks
      t.integer :hbp
      t.integer :hits
      t.integer :rbis
      t.integer :sac_flies
      t.string :avg
      t.string :obp
      t.string :slg
      t.string :ops
      t.string :runs_created
      t.string :iso
      t.timestamps
    end
  end
end
