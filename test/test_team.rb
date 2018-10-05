require_relative '../lib/team'
require 'minitest/autorun'

describe Team do
  before do
    @host = Team.new('Barcelona', '1')
    @guest = Team.new('Real', '0')
  end

  describe 'comparation' do
    it 'should compare teams by goals' do
      assert(@host > @guest)
    end
  end
end
