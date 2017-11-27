#
# Be sure to run `pod lib lint Skeleton.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Skeleton'
  s.version          = '0.1.2'
  s.summary          = 'Skeleton is an easy way to create sliding CAGradientLayer animations!'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
An easy way to create sliding CAGradientLayer animations! Works great for creating skeleton screens for loading content.
                       DESC

  s.homepage         = 'https://github.com/gonzalonunez/Skeleton'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gonzalo Nuñez' => 'hello@gonzalonunez.me' }
  s.source           = { :git => 'https://github.com/gonzalonunez/Skeleton.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'Skeleton/**/*'

end
