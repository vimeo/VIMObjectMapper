#
#  Be sure to run `pod spec lint VIMObjectMapper.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "VIMObjectMapper"
  s.version      = "5.6"
  s.summary      = "An automatic JSON to model object converter."
  s.homepage     = "https://github.com/vimeo/VIMObjectMapper"

  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE.md" }

  s.author             = "Kashif Mohammad"
  s.social_media_url   = "http://twitter.com/vimeo"

  s.platform     = :ios, "7.0"
  s.ios.deployment_target = "7.0"

  s.source       = { :git => "https://github.com/vimeo/VIMObjectMapper.git", :tag => s.version.to_s }

  s.source_files  = "VIMObjectMapper/*.{h,m}"
  s.exclude_files = "VIMObjectMapper/Exclude"

  s.framework  = "Foundation"

  s.requires_arc = true

end
