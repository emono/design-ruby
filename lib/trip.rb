Class Trip
  attr_reader :bicycles, :customers, :vehicle
  # この'mecanic'の引数はどんなクラスのものでもいい
  def prepare(prepares)
    prepares.each do |prepare|
      if prepare.kind_of?(Mecanic)
        prepare.prepare_bicycles(bicycles)
      elsif prepare.kind_of?(TripCoordinator)
        prepare.buy_food(customers)
      elsif prepare.kind_of?(Driver)
        prepare.gas_up(vehicle)
        prepare.fill_water_tand(vehicle)
      end
    end
  end
end