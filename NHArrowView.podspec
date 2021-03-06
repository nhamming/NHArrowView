#
# Be sure to run `pod lib lint NHArrowView.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "NHArrowView"
  s.version          = "0.1.0"
  s.summary          = "A simple directional arrow with animated rotation."
  s.homepage         = "https://github.com/nhamming/NHArrowView"
  s.license          = 'MIT'
  s.author           = { "Nathaniel Hamming" => "nathaniel.hamming@gmail.com" }
  s.source           = { :git => "https://github.com/nhamming/NHArrowView.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/NateHam80'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'NHArrowView' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
end
