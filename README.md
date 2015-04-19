# Dice probability
### About
N dice with faces from 1 to 6 are thrown. Find the probability that the sum of the numbers on the faces will be equal to M.
### Usage
```sh
bundle
ruby test/dice_test.rb
ruby run.rb
```
Or you may use gem *games_dice*
```sh
gem install games_dice
```
And run ruby code
```ruby
GamesDice.create('100d6').probabilities.to_h[350]
```
