Gem::Specification.new do |s|
  s.name = %q{capistrano-cm}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Justin S. Leitgeb"]
  s.date = %q{2009-11-04}
  s.description = %q{Lightweight cap extensions to assist in server configuration management}
  s.email = %q{justin@phq.org}

  s.extra_rdoc_files = [
    "README.md"
  ]

  s.files = [
    ".gitignore",
     "MIT-LICENSE",
     "README.md",
     "capistrano-cm.gemspec",
     "lib/capistrano/jsl/cm.rb"
  ]
  s.homepage = %q{http://github.com/jsl/capistrano-cm}
  s.require_paths = ["lib"]
  s.summary = %q{Cap extensions to help with server configuration management}

  s.add_dependency('capistrano')
end
