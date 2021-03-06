require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "meac_control"
    gem.summary = %Q{Library to communicate with a Mitsubishi Electric G-50A centralized controller}
    gem.description = %Q{Library to communicate with a Mitsubishi Electric G-50A centralized controller}
    gem.email = "bernd@tuneafish.de"
    gem.homepage = "http://github.com/bernd/meac_control"
    gem.authors = ["Bernd Ahlers"]

    gem.files = FileList["LICENSE", "README.md", "Rakefile", "VERSION.yml", "{lib,spec}/**/*"]

    gem.add_development_dependency "rspec", ">= 1.2.9"

    gem.add_dependency "httpclient"
    gem.add_dependency "nokogiri"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = Jeweler::VersionHelper.new(File.dirname(__FILE__))

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "MEACControl #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
