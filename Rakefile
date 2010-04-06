require 'rubygems'
require 'rake/clean'
require 'rake/gempackagetask'

spec = Gem::Specification.new do |s|
  s.name = 'internet_time'
  s.version = File.read('VERSION')
  s.date = File.mtime('VERSION')

  s.summary = %Q{Swatch Internet Time extension to Ruby Time class}
  s.description = %Q{Swatch Internet time extension to Ruby Time class}
  s.homepage = 'http://themactep.com/'
  s.author = 'Paul Philippov'
  s.email = 'themactep@gmail.com'
  s.version = File.read('VERSION')
  s.date = File.mtime('VERSION')

  s.files = FileList["{lib}/**/*","[A-Z]*"].to_a
  s.require_path = "lib"

  s.has_rdoc = true
  s.extra_rdoc_files = ['README', 'LICENSE']

  s.rubyforge_project = 'internet_time'
end

Rake::GemPackageTask.new(spec) do |p|
  p.gem_spec = spec
  p.need_tar = true
  p.need_zip = true
end
