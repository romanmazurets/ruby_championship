require_relative './game'
require_relative './file_parser'

class Championship
  attr_reader :teams

  def initialize(path_to_file)
    @teams = FileParser.parse(path_to_file).flatten
  end

  def table
    teams
      .clone
      .uniq(&:name)
      .sort_by(&:name)
      .each { |team| team.score = sum_score(team.name) }
      .sort_by(&:score)
      .reverse
  end

  private

  def sum_score(team_name)
    teams
      .select { |team| team.name.include? team_name }
      .map(&:score)
      .sum
  end
end
