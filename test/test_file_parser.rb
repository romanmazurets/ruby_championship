require_relative '../lib/file_parser'
require 'minitest/autorun'

describe FileParser do
  describe 'test include' do
    it 'must works' do
      FileParser.test_me.must_equal 'works'
    end
  end
end

