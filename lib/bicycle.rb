class Bicycle
  attr_reader :size, :tape_color

  def initialize(args)
    @size = args[:size]
    @tape_color = args[:tape_color]
  end

  # すべての自転車は、デフォルト値として同じタイヤサイズとチェーンサイズを持つ
  def spares
    {
      chain: "10-speed",
      tire_size: "23",
      tape_color: tape_color
    }
  end

  # 他にもメソッドたくさん  
end

bike = Bicycle.new(size: "M", tape_color: "red")
pp bike.size
pp bike.spares