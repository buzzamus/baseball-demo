class CreatePitchers < ActiveRecord::Migration[5.2]
  def change
    create_table :pitchers do |t|
      t.string :name
      t.string :arm
      t.integer :er
      t.float :ip
      t.integer :walks
      t.integer :hits
      t.integer :so
      t.string :era
      t.string :whip
      t.string :k_per_nine
      t.string :bb_per_nine
      t.timestamps
    end
  end
end
