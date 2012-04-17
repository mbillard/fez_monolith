class DeBruijn

  # De Bruijn Sequence for alphabet size k and subsequences of length n.
  def self.sequence(k, n)
    DeBruijn.new.sequence(k, n)
  end

  def sequence(k, n)
    a = [0] * k * n

    @sequence = []
    db(k, n, a, 1, 1)

    @sequence
  end

  private

  # Recursive function used to generate a De Bruijn sequence
  def db(k, n, a, t, p)
    if t > n
      (1...(p + 1)).each { |j| @sequence << a[j] } if n % p == 0
    else
      a[t] = a[t - p]
      db(k, n, a, t + 1, p)
      ((a[t - p] + 1)...k).each do |j|
        a[t] = j
        db(k, n, a, t + 1, t)
      end
    end
  end

end
