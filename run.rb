require 'benchmark'
require_relative './lib/dice'

dice = Dice.new
Benchmark.bm do |x|
  x.report('100 times') { dice.probability(100, 350) }
  x.report('200 times') { dice.probability(200, 600) }
  x.report('300 times') { dice.probability(300, 1000) }
  x.report('1000 times') { dice.probability(1000, 4000) }
end
