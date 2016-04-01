#
#  Be sure to run `pod spec lint VIMObjectMapper.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "VIMObjectMapper"
  s.version      = "6.0.1"
  s.summary      = "An automatic JSON to model object converter."
  s.homepage     = "https://github.com/vimeo/VIMObjectMapper"
  s.license      = { :type => "MIT", :file => "LICENSE.md" }

  s.author             = "Kashif Mohammad"
  s.social_media_url   = "http://twitter.com/vimeoapi"

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.0'

  s.source       = { :git => "https://github.com/vimeo/VIMObjectMapper.git", :tag => s.version.to_s }
  s.source_files  = "VimeoObjectMapper/VimeoObjectMapper/Source/*.{h,m}"

  s.requires_arc = true

  s.ios.frameworks  = "Foundation"
  s.osx.frameworks  = "Foundation"
  s.tvos.frameworks  = "Foundation"

end
