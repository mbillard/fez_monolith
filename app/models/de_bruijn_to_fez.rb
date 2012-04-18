require 'de_bruijn'

class DeBruijnToFez

  MAPPING = { '0' => 'A', '1' => 'UP', '2' => 'DOWN', '3' => 'RT', '4' => 'LT', '5' => 'LEFT', '6' => 'RIGHT' }

  def self.sequence(k, n)
    input_sequences = []
    sequences = DeBruijn.sequence(k, n)

    sequences_size = sequences.size
    (0...sequences_size).each do |i|
      sequence = sequences.values_at(i..(i+n-1)).compact

      # Add the first characters to complete the loop
      sequence += sequences.values_at(0...(i - sequences_size + n)) if i > sequences_size - n

      sequence = sequence.join(' ')

      MAPPING.each do |int, input|
        sequence.gsub!(int.to_s, input)
      end
      input_sequences << sequence
    end

    input_sequences
  end

end
