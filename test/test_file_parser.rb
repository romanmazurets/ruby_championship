require 'minitest/autorun'
require_relative './../lib/file_parser'

describe FileParser do
  before { @parser = FileParser.new }

  describe 'test include' do
    it 'must works' do
      @parser.test_me.must_equal 'works'
    end
  end
end

