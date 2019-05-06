require './lib/gear'
require './lib/wheel'
puts Gear.new(
  chainring: 52, 
  cog: 11, 
  rim: 26, 
  tire: 1.5
).gear_inches