# Dice have 6 sides by default.
class Dice
  SIDES = 6

  def probability(throws, points)
    p = (0..((points - throws) / SIDES)).inject(0) do |count, k|
      one = (-1)**k
      count + one * bi_coefficient(throws, k) * bi_coefficient(points - 1 - SIDES * k, throws - 1)
    end
    p.fdiv(SIDES**throws)
  end

  private

  def bi_coefficient(n, k)
    k = [n - k, k].max
    ((k + 1)..n).reduce(1, :*) / (1..(n - k)).reduce(1, :*)
  end
end
