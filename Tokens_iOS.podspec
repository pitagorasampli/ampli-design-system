Pod::Spec.new do |s|
  s.name             = 'Tokens'
  s.version          = "0.0.3"
  s.summary          = 'Design Tokens'
  s.description      = <<-DESC
Design Tokens.
                       DESC
  s.homepage         = 'homepage'
  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.author           = { 'Dev Team' => 'devs@pitagorasdigital.com.br' }
  s.source           = { :git => '', :tag => s.version.to_s, :branch => 'release' }
  s.platform = :ios
  s.source_files = 'build/ios/**/*.{h,m,json}'
  s.public_header_files = 'build/ios/**/*.h'
  s.resources = ['build/assets/images/png/*.png']
  s.frameworks = 'UIKit', 'QuartzCore'
end