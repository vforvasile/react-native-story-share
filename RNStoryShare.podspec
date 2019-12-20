require "json"
version = JSON.parse(File.read("./package.json"))["version"]

Pod::Spec.new do |s|
  s.name           = "RNStoryShare"
  s.version        = version
  s.summary        = "App Store Ratings for React Native."
  s.homepage       = "https://github.com/vforvasile/react-native-story-share"
  s.license        = "MIT"
  s.author         = { "Joel Arvidsson" => "joel@oblador.se" }
  s.platform       = :ios, "9.0"
  s.source         = { :git => "https://github.com/vforvasile/react-native-story-share.git", :tag => "v#{s.version}" }
  s.source_files = "ios/**/*.{h,m, swift}"
  s.preserve_paths = "**/*.js"
  s.requires_arc = true

  s.dependency "React"

end
  
