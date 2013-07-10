require 'foodcritic'
require 'emeril/rake'

FoodCritic::Rake::LintTask.new do |t|
    t.options = { :fail_tags => ['any'] }
end

Emeril::RakeTasks.new do |t|
  t.config[:publish_to_community] = false
  t.config[:tag_prefix]           = false
  t.config[:logger]               = Logger.new(STDOUT)
end

task :default => [:foodcritic]
