# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "postmark/version"

Gem::Specification.new do |s|
  s.name        = "postmark"
  s.version     = Postmark::VERSION
  s.authors     = [%q{Petyo Ivanov}, %q{Ilya Sabanin}]
  s.email       = %q{ilya@wildbit.com}
  s.homepage    = "http://postmarkapp.com"
  s.summary     = %q{Official Postmark API wrapper.}
  s.description = %q{Use this gem to send emails through Postmark HTTP API and retrieve info about bounces.}

  s.rubyforge_project = "postmark"
  s.post_install_message = %q{
      ==================
      Thanks for installing the postmark gem. If you don't have an account, please sign up at http://postmarkapp.com/.
      Review the README.rdoc for implementation details and examples.
      ==================
  }

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "activesupport"
  s.add_development_dependency "fakeweb"
  s.add_development_dependency "fakeweb-matcher"
  s.add_development_dependency "rake"
  s.add_development_dependency "rdoc"
  s.add_development_dependency "rspec", '1.3.1'
  s.add_development_dependency "timecop"
  s.add_development_dependency "yajl-ruby"
  s.add_runtime_dependency "mail"
  
  if RUBY_VERSION >= "1.9"
    s.add_development_dependency "ruby-debug19"
  else
    s.add_development_dependency "ruby-debug"
    s.add_runtime_dependency "tmail"
  end
end
