Gem::Specification.new do |s|
  s.name = 'internet_time'
  s.summary = %Q{Swatch Internet Time extension to Ruby Time class}
  s.description = %Q{Swatch Internet time extension to Ruby Time class}
  s.homepage = 'http://themactep.com/'
  s.author = 'Paul Philippov'
  s.email = 'themactep@gmail.com'
  s.version = File.read('VERSION')
  s.date = File.mtime('VERSION')

  s.require_path = "lib"
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc']
  s.rubyforge_project = 'internet_time'
end
