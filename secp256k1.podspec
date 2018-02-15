#
# Be sure to run `pod lib lint secp256k1.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'secp256k1'
  s.version          = '0.1.0'
  s.summary          = 'A short description of secp256k1.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Boilertalk/secp256k1.swift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Koray Koska' => 'koray@koska.at' }
  s.source           = { :git => 'https://github.com/Boilertalk/secp256k1.swift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.module_name = 'secp256k1'

  s.pod_target_xcconfig = {
    'SWIFT_INCLUDE_PATHS' => '${PODS_ROOT}',
    'OTHER_CFLAGS' => '-DHAVE_CONFIG_H=1 -pedantic -Wall -Wextra -Wcast-align -Wnested-externs -Wshadow -Wstrict-prototypes -Wno-shorten-64-to-32 -Wno-conditional-uninitialized -Wno-unused-function -Wno-long-long -Wno-overlength-strings -O3',
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/secp256k1_ios/Classes"'
  }

  s.prepare_command = <<-CMD
                        sed -i '' -e 's:include/::g' ./**/**/**/**/*.h
                        sed -i '' -e 's:include/::g' ./**/**/**/**/**/*.h
                        sed -i '' -e 's:include/::g' ./**/**/**/**/**/**/*.h
                        sed -i '' -e 's:include/::g' ./**/**/**/**/*.c
                        sed -i '' -e 's:src/modules/recovery/:modules/recovery/:g' ./**/**/**/**/*.c
                        sed -i '' -e 's:src/modules/echd/:modules/ecdh/:g' ./**/**/**/**/*.c
                        sed -i '' -e 's:contrib/::g' ./**/**/**/**/*.c
                        sed -i '' -e 's:contrib/::g' ./**/**/**/**/*.c

                        sed -i '' -e 's:libsecp256k1-config.h:../../libsecp256k1-config.h:g' ./**/**/**/**/*.c
                        sed -i '' -e 's:libsecp256k1-config.h:../../libsecp256k1-config.h:g' ./**/**/**/**/*.h

                        sed -i '' -e 's:ecmult_static_context.h:../../ecmult_static_context.h:g' ./**/**/**/**/*.h
                   CMD

  s.source_files = 'secp256k1/Classes/secp256k1/{src,include,contrib}/*.{h,c}', 'secp256k1/Classes/secp256k1/src/modules/{recovery,ecdh}/*.{h,c}', 'secp256k1_ios/Classes/libsecp256k1-config.h', 'secp256k1_ios/Classes/secp256k1.h', 'secp256k1/Classes/ecmult_static_context.h.h'
  s.public_header_files = 'secp256k1/Classes/secp256k1/include/*.h'
  s.private_header_files = 'secp256k1/Classes/ecmult_static_context.h.h', 'secp256k1/Classes/secp256k1/*.h', 'secp256k1/Classes/secp256k1/{contrib,src}/*.h', 'secp256k1/Classes/secp256k1/src/modules/{recovery, ecdh}/*.h'
  s.exclude_files = 'secp256k1/Classes/secp256k1/src/test*.{c,h}', 'secp256k1/Classes/secp256k1/src/gen_context.c', 'secp256k1/Classes/secp256k1/src/*bench*.{c,h}', 'secp256k1/Classes/secp256k1/src/modules/{recovery,ecdh}/*test*.{c,h}'

  # s.resource_bundles = {
  #   'secp256k1' => ['secp256k1/Assets/*.png']
  # }

  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
