lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "at_protocol/version"

specfiles = Dir["./lib/**/*.rb"] + Dir["./ext/**/*"]

Gem::Specification.new do |spec|
  spec.name = "at_protocol"
  spec.version = ATProto::VERSION
  spec.authors = ["Shreyan Jain", "Tynan Burke"]
  spec.email = ["shreyan.jain.9@outlook.com"]
  spec.description = "A Ruby gem for interacting with AT Protocol"
  spec.summary = "Interact with the AT Protocol using Ruby"
  spec.homepage = "https://github.com/ShreyanJain9/at_protocol"
  spec.license = "MIT"
  spec.files = specfiles
  spec.extensions = %w[ext/at_protocol/extconf.rb]
  spec.require_paths = %w(lib ext)
  spec.add_runtime_dependency "xrpc", ">= 0.1.5"
  spec.add_development_dependency "rake-compiler"
end
