
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sharedcypress/version"

Gem::Specification.new do |spec|
  spec.name          = "sharedcypress"
  spec.version       = Sharedcypress::VERSION
  spec.authors       = ["laurend"]
  spec.email         = ["laurend@mitre.org"]

  spec.summary       = %q{Shared functionality between cypress apps}
  spec.description   = %q{This gem provides a library of shared functionality between cypress apps.}
  spec.homepage      = "https://github.com/projectcypress/sharedcypress/"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency 'activesupport', '~> 4.2.7'
  spec.add_dependency 'sass'
end
