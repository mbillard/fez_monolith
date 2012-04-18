class CreateBasicSequences < ActiveRecord::Migration
  def up
    DeBruijnToFez.sequence(5, 7).each do |inputs|
      Sequence.create!(:inputs => inputs, :test_count => 0)
    end
  end

  def down
    Sequence.delete_all
  end
end
