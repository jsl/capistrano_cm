Gem::Specification.new do |s|
  s.name = "capistrano-cm"
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.author = "Justin S. Leitgeb"
  s.date = "2009-11-04"
  s.description = "Lightweight cap extensions to assist in server configuration management"
  s.email = "justin@stackbuilders.com"

  s.extra_rdoc_files = ["README.rdoc"]

  s.files = [
    ".gitignore",
     "MIT-LICENSE",
     "README.rdoc",
     "capistrano-cm.gemspec",
     "lib/capistrano/jsl/cm.rb"
  ]
  
  s.homepage = "http://github.com/jsl/capistrano_cm"
  s.require_paths = ["lib"]
  s.summary = "Cap extensions to help with server configuration management"

  s.add_dependency('capistrano')
end
