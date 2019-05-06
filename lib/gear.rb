class Gear
  attr_reader :chainring, :cog, :rim,  :tire
  def initialize(args)
    args = default.merge(args)
    @chainring = args[:chainring]
    @cog = args[:cog]
    @rim = args[:rim]
    @tire = args[:tire]
  end

  def default 
    {
      chainring: 40,
      cog: 18
    }
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
