class AddMatchCountToSequences < ActiveRecord::Migration
  def change
    add_column :sequences, :match_count, :integer
  end
end
