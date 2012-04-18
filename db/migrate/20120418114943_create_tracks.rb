class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :ip_address
      t.integer :tested_count
      t.integer :match_count
      t.integer :false_positive_count

      t.timestamps
    end
  end
end
