class Player

  attr_reader :name, :pick, :attempt

  def initialize(name)
    @name = name
    @attempt = 1
  end

  def picks(weapon)
    @pick = weapon
  end

  def picked?
  	@pick
  end

  def reset_pick
  	@pick = false
  end

  def next_attempt
    @attempt += 1
  end

end
