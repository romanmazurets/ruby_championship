class FileParser
  def self.parse(path_to_file)
    File.readlines(path_to_file).map do |line|
      Game.new(line).play
    end
  end
end
