require 'test_helper'
require 'de_bruijn'

class DeBruijnTest < ActiveSupport::TestCase
  test "sequence" do
    sequence = DeBruijn.sequence(2, 3)

    assert sequence == [0, 0, 0, 1, 0, 1, 1, 1]
  end

  test "sequence to fez" do
    input_sequence = DeBruijnToFez.sequence(2, 3)

    p input_sequence.inspect

    assert input_sequence == ['A A A', 'A A UP', 'A UP A', 'UP A UP', 'A UP UP', 'UP UP UP', 'UP UP A', 'UP A A']
  end
end
