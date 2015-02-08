class Player

  attr_reader :name, :pick

  def initialize(name)
    @name = name
  end

  def picks(weapon)
    @pick = weapon
  end

end
