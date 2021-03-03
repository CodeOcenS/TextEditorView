#
# Be sure to run `pod lib lint TextEditorView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TextEditorView'
  s.version          = '0.1.0'
  s.summary          = '具有占位、自动扩展、字数统计的 textView'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '一个 TextView, 具有占位，AutoLayout输入自动扩展， 输入字数统计功能'

  s.homepage         = 'https://github.com/CodeOcenS/TextEditorView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CodeOcenS' => '2636015706@qq.com' }
  s.source           = { :git => 'https://github.com/CodeOcenS/TextEditorView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'TextEditorView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TextEditorView' => ['TextEditorView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
