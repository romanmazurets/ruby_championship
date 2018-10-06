require 'active_support/inflector'

class Team
  include Comparable

  attr_reader :name
  attr_accessor :score, :goals

  def initialize(name, goals, score = nil)
    @name = name
    @goals = goals
    @score = score
  end

  def <=>(other)
    goals <=> other.goals
  end

  def to_s
    "#{name}, #{score} #{'pt'.pluralize(score)}"
  end
end

