lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "at_proto/version"

specfiles = Dir["./lib/at_proto/*"]
specfiles.push("./lib/at_proto.rb")

Gem::Specification.new do |spec|
  spec.name = "at_proto"
  spec.version = ATProto::VERSION
  spec.authors = ["Shreyan Jain", "Tynan Burke"]
  spec.email = ["shreyan.jain.9@outlook.com"]
  spec.description = "A Ruby gem for interacting with AT Protocol"
  spec.summary = "Interact with the AT Protocol using Ruby"
  spec.homepage = "https://github.com/ShreyanJain9/at_proto"
  spec.license = "MIT"
  spec.files = specfiles
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency "xrpc", ">= 0.1.5"
end