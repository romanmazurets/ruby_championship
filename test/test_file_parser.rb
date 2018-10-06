require_relative '../lib/file_parser'
require 'minitest/autorun'

describe FileParser do
  describe '#parse' do
    it 'returns Array of teams' do
      subject = FileParser.parse('sample-input.txt')
      subject.must_be_instance_of Array
      subject.flatten.first.must_be_instance_of Team
    end
  end
end
