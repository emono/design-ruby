class Gear
  attr_accessor :chainring, :cog, :rim, :tire
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end
  
  def ratio
    chainring / cog.to_f
  end

  def gea_inches
    # タイヤはリムの周りを囲むので、直径を計算するためには2倍する
    ratio * (rim + (tire * 2))
  end
end

puts Gear.new(52, 11, 26, 1.5).gea_inches
puts Gear.new(30, 27, 24, 1.25).gea_inches