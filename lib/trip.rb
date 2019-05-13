Class Trip
  attr_reader :bicycles, :customers, :vehicle
  # この'mecanic'の引数はどんなクラスのものでもいい
  def prepare(prepares)
    prepares.each{|prepare|
      case prepare
      when Mecanic
        prepara.prepare_bicycles(bicycles)
      when TripCoordinator
        prepara.buy_food(customers)
      when Driver
        prepare.gas_up(vehicle)
        prepare.fill_water_tand(vehicle)
      end
    }
    mecanic.prepare_bicycles(bicycle)
  end
end