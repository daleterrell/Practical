
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "Practical/version"

Gem::Specification.new do |spec|
  spec.name          = "Practical"
  spec.version       = Practical::VERSION
  spec.authors       = ["'Dale Terrell'"]
  spec.email         = ["'tragicid@gmail.com'"]

  spec.summary       = "Showing the 10 best uses of practical effects in horror movies"
  spec.license       = "MIT"

 
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

   
    
  else
    raise "RubyGems 2.0 or newer is required to protect against "
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "nokogiri"
end

