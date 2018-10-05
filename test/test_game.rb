require_relative '../lib/game'
require 'minitest/autorun'

describe Game do
  before do
    @line = 'Barcelona 1, Arsenal 0'
    @game = Game.new(@line)
  end

  describe '.build_teams' do
    it 'return array of two teams' do
      subject = @game.send(:build_teams, @line)
      subject.must_be_instance_of Array
    end
  end
end

