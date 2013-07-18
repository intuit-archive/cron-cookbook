require 'foodcritic'
require 'emeril/rake_tasks'

FoodCritic::Rake::LintTask.new do |t|
  t.options = { :fail_tags => ['any'] }
end

Emeril::RakeTasks.new do |t|
  t.config[:logger]               = Logger.new(STDOUT)
  t.config[:publish_to_community] = false
  t.config[:publisher]            = nil
  t.config[:tag_prefix]           = false
end

task :default => [:foodcritic]

begin
  require 'kitchen/rake_tasks'
  Kitchen::RakeTasks.new
rescue
  puts ">>>>> Kitchen gem not loaded, omitting tasks" unless ENV['CI']
end
