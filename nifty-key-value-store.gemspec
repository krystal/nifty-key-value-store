require File.expand_path('../lib/nifty/key_value_store/version', __FILE__)

Gem::Specification.new do |s|
  s.name          = "nifty-key-value-store"
  s.description   = %q{A key value store controller for Rails models}
  s.summary       = s.description
  s.homepage      = "https://github.com/niftyware/key-value-store"
  s.version       = Nifty::KeyValueStore::VERSION
  s.files         = Dir.glob("{lib}/**/*")
  s.require_paths = ["lib"]
  s.authors       = ["Adam Cooke"]
  s.email         = ["adam@niftyware.io"]
end
