class Player

  attr_reader :name, :hit_points
  DEFAULT_HIT_POINTS = 50

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def attack
    @hit_points -= 10
  end
end
