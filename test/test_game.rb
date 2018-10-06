require_relative '../lib/game'
require_relative '../lib/team'
require 'minitest/autorun'

describe Game do
  before do
    @line = 'Barcelona 1, Arsenal 0'
    @game = Game.new @line
  end

  describe '.build_teams' do
    it 'assigns guest and host' do
      @game.host.name.must_equal 'Barcelona'
      @game.host.goals.must_equal 1
      @game.guest.name.must_equal 'Arsenal'
      @game.guest.goals.must_equal 0
    end
  end

  describe '.play' do
    it 'returns teams with scores' do
      subject = @game.play
      subject.first.score.must_equal 3
      subject.last.score.must_equal 0
    end
  end
end


