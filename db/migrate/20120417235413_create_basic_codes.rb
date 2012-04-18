class CreateBasicCodes < ActiveRecord::Migration
  def up
    # sequences = DeBruijn.sequence(5, 8)
    # (0...sequences.size).each do |i|
    #   sequence = sequences.values_at(i..(i+7)).join(' ')
    # end
  end

  def down
    Code.delete_all
  end
end
