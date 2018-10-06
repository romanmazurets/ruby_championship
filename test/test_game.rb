require_relative '../lib/game'
require_relative '../lib/team'
require 'minitest/autorun'

describe Game do
  before do
    @line = 'Barcelona 1, Arsenal 0'
    @game = Game.new @line
  end

  describe '.build_teams' do
    it 'returns array of two teams' do
      subject = @game.send(:build_teams, @line)
      subject.must_equal [Team.new('Barcelona',1), Team.new('Arsenal', 0)]
    end
  end

  describe '.play' do
    it 'returns teams with scores' do
      subject = @game.play
      subject.must_equal [Team.new('Barcelona', 1, 3), Team.new('Arsenal', 0, 0)]
    end
  end
end

