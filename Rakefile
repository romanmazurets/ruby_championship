require 'rake/testtask'

Dir["#{File.dirname(__FILE__)}/lib/*.rb"].each { |f| require(f) }

Rake::TestTask.new do |t|
  t.test_files = FileList['./test/test*.rb']
end

desc 'Run test'
task default: :test

desc 'Application'
task :run do
  puts 'Hola!'
end
