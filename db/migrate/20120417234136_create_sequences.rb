class CreateSequences < ActiveRecord::Migration
  def change
    create_table :sequences do |t|
      t.string :inputs
      t.integer :test_count
      t.boolean :has_three_repeating_inputs
      t.boolean :has_left_right_inputs

      t.timestamps
    end
  end
end
