# encoding: utf-8
require "bundler/gem_tasks"
require "rdoc/task"
require "spec/rake/spectask"

desc 'Default: run unit specs.'
task :default => :spec

desc 'Generate documentation for the postmark plugin.'
RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Postmark'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.textile')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

desc 'Test the postmark plugin.'
Spec::Rake::SpecTask.new('spec') do |t|
  t.pattern = FileList['spec/**/*_spec.rb']
end
