Pod::Spec.new do |s|
  s.name = 'filter_audio'
  s.version = '0.5.0'
  s.license = 'LICENSE'
  s.summary = 'WebRTC audio processing library'
  s.homepage = 'https://www.pylon.com'
  s.authors = { 'Spokestack' => 'support@pylon.com' }
  s.source = { :git => 'https://github.com/pylon/filter_audio.git', :tag => s.version.to_s }
  s.license = {:type => 'Apache', :file => 'LICENSE'}
  s.ios.deployment_target = '11.0'
  s.swift_version = '4.2'
  s.module_map = 'filter_audio.modulemap'
  s.exclude_files = 'test/*'
  s.source_files = '**/*.{h,c}'
  s.header_mappings_dir = './'
  s.private_header_files = 'aec/*.h', 'agc/*.h', 'ns/*.h', 'other/*.h', 'vad/*.h' 'vad/mock/*.h', 'zam/*.h'
  s.public_header_files = 'aec/include/*.h', 'aec/include/*.h', 'filter_audio.h', 'ns/include/*.h', 'vad/include/*.h'
  s.pod_target_xcconfig = {'DEFINES_MODULE' => 'YES', 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/Headers/Public/filter_audio/**'}
  s.static_framework = true

end
