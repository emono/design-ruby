Class Trip
  attr_reader :bicycles, :customers, :vehicle
  # この'mecanic'の引数はどんなクラスのものでもいい
  def prepare(prepares)
    prepares.each do |prepare|
      if prepare.respond_to?(prepare_bicycles)
        prepare.prepare_bicycles(bicycles)
      elsif prepare.kind_of?(buy_food)
        prepare.buy_food(customers)
      elsif prepare.kind_of?(gas_up)
        prepare.gas_up(vehicle)
        prepare.fill_water_tand(vehicle)
      end
    end
  end
end