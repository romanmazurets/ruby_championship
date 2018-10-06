require_relative './team'

class Game
  attr_reader :host, :guest

  def initialize(line)
    build_teams line
  end

  def play
    case @host <=> @guest
    when 1
      @host.score = 3
      @guest.score = 0
    when -1
      @host.score = 0
      @guest.score = 3
    when 0
      @host.score = 1
      @guest.score = 1
    end
    [@host, @guest]
  end

  private

  def build_teams(line)
    @host, @guest = line.split(',').map do |team_line|
      new_team team_line
    end
  end

  def new_team(line)
    last_whitespace = line.rindex(' ')
    name = line[0..last_whitespace-1]
    goals = line[last_whitespace+1..line.size]
    Team.new(name, goals.to_i)
  end
end

