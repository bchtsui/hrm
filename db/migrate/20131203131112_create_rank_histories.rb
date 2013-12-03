class CreateRankHistories < ActiveRecord::Migration
  def change
    create_table :rank_histories do |t|
      t.string :rank
      t.date :date
      t.integer :number

      t.timestamps
    end
  end
end
