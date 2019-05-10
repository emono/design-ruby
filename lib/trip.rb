Class Trip
  attr_reader :bicycles, :customers, :vehicle
  # この'mecanic'の引数はどんなクラスのものでもいい
  def prepare
    mecanic.prepare_bicycles(bicycle)
  end
end