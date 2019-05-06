class Gear
  attr_reader :chainring, :cog, :rim,  :tire
  def initialize(args)
    @chainring = args[:chainring] || 40
    @cog = args[:cog] || 18
    @rim = args[:rim]
    @tire = args[:tire]
  end
  
  def gear_inches
    ratio * diameter
  end

  def diameter
    wheel.diameter
  end

  def wheel
    @wheel ||= Wheel.new(rim, tire)
  end

  def ratio
    chainring / cog.to_f
  end
end
