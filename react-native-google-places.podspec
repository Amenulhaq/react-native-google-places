require 'json'
package = JSON.parse(File.read(File.join(__dir__, './package.json')))

Pod::Spec.new do |s|
  s.name           = 'react-native-google-places'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = 'https://github.com/Amenulhaq/react-native-google-places-api'
  s.source         = { :git => 'https://github.com/Amenulhaq/react-native-google-places-api.git', :tag => s.version }

  s.platform       = :ios, '9.0'

  s.preserve_paths = 'README.md', 'package.json', 'index.js'
  s.source_files   = 'ios/*.{h,m}'

  s.compiler_flags = '-DHAVE_GOOGLE_MAPS=1', '-fno-modules'

  s.dependency 'React'
  s.dependency 'GooglePlaces', '~> 3.1.0'
  s.dependency 'GoogleMaps', '~> 3.1.0'
end