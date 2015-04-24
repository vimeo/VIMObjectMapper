#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "VIMObjectMapper"
  s.version          = "1.0.0"
  s.summary          = "An automatic JSON to model object converter"
  s.description      = <<-DESC
                        VIMObjectMapper converts JSON into model objects.
                       DESC
  s.homepage         = "https://github.com/vimeo/VIMObjectMapper"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Alfie Hanssen" => "" }
  s.source           = { 
    :git => "https://github.com/FastSociety/VIMObjectMapper.git", 
    :tag => s.version.to_s,
    :submodules => true,
    :branch => 'cocoapod'
  }
  s.social_media_url = 'https://twitter.com/vimeo'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.public_header_files = '*.h'
  s.source_files = '*{h,m}'
  
end
