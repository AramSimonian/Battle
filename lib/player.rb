class Player
  attr_reader :name, :hit_points

  DEFAULT_HIT_POINTS = 60

  def initialize(name, hit_points = nil)
    @name = name
    @hit_points = hit_points || DEFAULT_HIT_POINTS
  end

  def name
    @name
  end

  def receive_attack
    @hit_points-=10
  end

end
