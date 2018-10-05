class Team
  include Comparable

  attr_reader :name, :goals
  attr_accessor :score

  def initialize(name, goals, score = nil)
    @name = name
    @goals = goals
    @score = score
  end

  def <=>(other)
    goals <=> other.goals
  end
end

