Pod::Spec.new do |s|
  s.name             = "Noti"
  s.version          = "1.0.0"
  s.summary          = "A short description of Noti."
  s.homepage         = "https://github.com/onevcat/Noti"
  s.license          = { type: 'MIT', file: 'LICENSE' }
  s.author           = { "onevcat" => "onevcat@gmail.com" }
  s.source           = { git: "https://github.com/onevcat/Noti.git", tag: s.version.to_s }
  s.social_media_url = 'https://twitter.com/onevcat'
  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  s.ios.source_files = 'Noti/Sources/**/*.{swift}'
  # s.resource_bundles = {
  #   'Noti' => ['Noti/Sources/**/*.xib']
  # }
  # s.ios.frameworks = 'UIKit', 'Foundation'
  # s.dependency 'Eureka', '~> 4.0'
end
