require_relative '../lib/championship'
require 'minitest/autorun'

describe Championship do
  before { @championship = Championship.new('./sample-input.txt') }

  describe '.new' do
    it 'builds array of teams' do
      @championship.teams.must_be_instance_of Array
      @championship.teams.first.must_be_instance_of Team
    end
  end

  describe '.sum_score' do
    it 'sums all scores of one team' do
      @championship.send(:sum_score, 'Tarantulas').must_equal 6
      @championship.send(:sum_score, 'Lions').must_equal 5
      @championship.send(:sum_score, 'FC Awesome').must_equal 1
      @championship.send(:sum_score, 'Snakes').must_equal 1
      @championship.send(:sum_score, 'Grouches').must_equal 0
    end
  end

  describe '.table' do
    it 'returns sorted by scores array of teams' do
      subject = @championship.table
      subject[0].name.must_equal 'Tarantulas'
      subject[1].name.must_equal 'Lions'
      subject[2].name.must_equal 'FC Awesome'
      subject[3].name.must_equal 'Snakes'
      subject[4].name.must_equal 'Grouches'
    end
  end
end
