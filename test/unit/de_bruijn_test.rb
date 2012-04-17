require 'test_helper'
require 'de_bruijn'

class DeBruijnTest < ActiveSupport::TestCase
  test "sequence" do
    sequence = DeBruijn.sequence(2, 3)

    assert sequence == [0, 0, 0, 1, 0, 1, 1, 1]
  end
end
