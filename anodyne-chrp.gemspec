Gem::Specification.new do |spec|
  spec.name          = "anodyne-chrp"
  spec.version       = "0.1.0"
  spec.summary       = "AnodyneWiki's aggregator scripts"
  spec.authors       = ["AnodyneWiki"]
  spec.files         = Dir["lib/**/*.rb", "exe/*", "assets/*.json", "scripts/stereoisomers.py"]
  spec.bindir        = "exe"
  spec.executables   = ["chrp"]
  spec.require_paths = ["lib"]
end
