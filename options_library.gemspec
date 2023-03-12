lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'option_lib/version'

Gem::Specification.new do |s|
  s.name             = %q{options_library}
  s.version          = OptionLib::VERSION
  s.authors          = ["Dan Tylenda-Emmons", "Dr. Hartmut Bischoff"]
  s.license          = 'MIT'
  s.date             = %q{2023-03-10}
  s.description      = %q{A gem used to calc the price of an option.}
  s.email            = %q{topofocus@gmail.com}
  s.extra_rdoc_files = ["README.md", "lib/option/g_library.rb", "lib/option_lib/goption_calculator.rb", "lib/option_lib/option_call.rb", "lib/option_lib/option_model.rb", "lib/option_lib/option_put.rb"]
  s.homepage = %q{http://github.com/topofocus/options_library}
  s.rdoc_options     = ["--line-numbers", "--inline-source", "--title", "Options_library", "--main", "README.md"]
  s.require_paths    = ["lib"]
  s.summary = %q{A gem used to calc the price of an option.}
  s.files          = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  s.add_development_dependency "bundler", "~> 2"
  s.add_development_dependency "rake", "~> 13.0"
  s.add_development_dependency "rspec", "~> 4.0"
  s.add_development_dependency "ib-api"


end
