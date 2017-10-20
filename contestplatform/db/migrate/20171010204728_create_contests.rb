class CreateContests < ActiveRecord::Migration[5.1]
  def change
    create_table :contests do |t|
      t.string :NameofContest
      t.string :ContestLevel
      t.string :ContestLocation
      t.int :NumberOfPlayers

      t.timestamps
    end
  end
end
