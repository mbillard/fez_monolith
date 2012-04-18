class AddFalsePositiveCountToSequences < ActiveRecord::Migration
  def change
    add_column :sequences, :false_positive_count, :integer
  end
end
