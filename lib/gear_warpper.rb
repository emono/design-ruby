module SomeFramework
  class Gear
    attr_reader :chainring, :cog, :rim,  :tire
    def initialize(chainring, cog, rim, tire)
      @chainring = chainring
      @cog = cog
      @rim = rim
      @tire = tire
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
end

module GearWarpper
  def self.gear(args)
    args = self.default.merge(args)
    SomeFramework::Gear.new(
      args[:chainring],
      args[:cog],
      args[:rim],
      args[:tire]
    )
  end

  def self.default 
    {
      chainring: 40,
      cog: 18
    }
  end

  
  
end