require_relative '../lib/team'
require 'minitest/autorun'

describe Team do
  before do
    @host = Team.new('Barcelona', 1, 3)
    @guest = Team.new('Real', 0, 0)
  end

  describe 'comparation' do
    it 'should compare teams by goals' do
      assert(@host > @guest)
    end
  end

  describe 'to_s' do
    it 'return name and points' do
      @host.to_s.must_match /Barcelona, 3 pts/
      Team.new('Inter', 0, 1).to_s.must_match /Inter, 1 pt/
    end
  end
end
