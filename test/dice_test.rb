require 'minitest/autorun'
require_relative '../lib/dice'

# Unit test for class Dice
class TestDice < Minitest::Test
  def setup
    @dice = Dice.new
  end

  def test_that_bi_coefficient_will
    assert_equal 1, @dice.send(:bi_coefficient, 3, 0)
    assert_equal 1, @dice.send(:bi_coefficient, 3, 3)
    assert_equal 3, @dice.send(:bi_coefficient, 3, 1)
    refute_equal 1, @dice.send(:bi_coefficient, 3, 2)
  end

  def test_that_dice_probability_will
    assert_equal 0.125, @dice.send(:probability, 3, 10)
    refute_equal 0.15, @dice.send(:probability, 3, 11)
  end
end
