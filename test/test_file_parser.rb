require_relative '../lib/file_parser'
require 'minitest/autorun'

describe FileParser do
  describe '#parse' do
    before { @file_parser = FileParser.parse('sample-input.txt') }

    # it 'returns Array' do
    #   @file_parser.must_be_instance_of Array
    # end
  end
end

