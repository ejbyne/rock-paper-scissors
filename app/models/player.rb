class Player

  attr_reader :name, :pick, :attempt

  def initialize(name)
    @name = name
    @attempt = 1
    @picked = false
  end

  def picks(weapon)
    @pick = weapon
    @picked = true
  end

  def picked?
    @picked
  end

  def next_attempt
    @picked = false
    @attempt += 1
  end

end
