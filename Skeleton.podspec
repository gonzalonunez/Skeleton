Pod::Spec.new do |s|
  s.name             = 'Skeleton'
  s.version          = '0.4.0'
  s.summary          = 'Skeleton is an easy way to create sliding CAGradientLayer animations!'

  s.description      = <<-DESC
Skeleton is an easy way to create sliding CAGradientLayer animations! Works great for creating skeleton screens for loading content.
                       DESC

  s.homepage         = 'https://github.com/gonzalonunez/Skeleton'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gonzalo Nuñez' => 'hello@gonzalonunez.me' }
  s.source           = { :git => 'https://github.com/gonzalonunez/Skeleton.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_version = '5.0'

  s.source_files = 'Skeleton/**/*'

end
