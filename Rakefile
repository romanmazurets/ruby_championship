require 'rake/testtask'

Dir["#{File.dirname(__FILE__)}/lib/*.rb"].each { |f| require(f) }

Rake::TestTask.new do |t|
  t.test_files = FileList['./test/test*.rb']
end

desc 'Run test'
task default: :test

desc 'Application'
task :run, ['path_to_file'] do |t, args|
  file = args.path_to_file || 'sample-input.txt'

  unless File.file? file
    puts 'ERROR: Wrong path to file'
    next
  end

  puts Championship.new(file).to_s
end
