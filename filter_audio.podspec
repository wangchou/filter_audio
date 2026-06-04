Pod::Spec.new do |s|
  s.name = 'filter_audio'
  s.version = '0.5.2'
  s.summary = 'WebRTC audio processing library'
  s.homepage = 'https://www.pylon.com'
  s.authors = { 'Spokestack' => 'support@pylon.com' }
  s.source = { :git => 'https://github.com/pylon/filter_audio.git', :tag => s.version.to_s }
  s.license = { :type => 'Apache', :file => 'LICENSE' }

  # 部署目標
  s.ios.deployment_target = '14.0'
  s.osx.deployment_target = '14.0'
  s.swift_version = '6.0'

  s.module_map = 'filter_audio.modulemap'
  s.exclude_files = 'test/*'
  s.source_files = '**/*.{h,c}'
  s.header_mappings_dir = './'

  # 修正：補上漏掉的逗號
  s.private_header_files = 'aec/*.h', 'agc/*.h', 'ns/*.h', 'other/*.h', 'vad/*.h', 'vad/mock/*.h', 'zam/*.h'
  # 修正：移除重複的 aec/include/*.h
  s.public_header_files = 'aec/include/*.h', 'filter_audio.h', 'ns/include/*.h', 'vad/include/*.h'

  # 最佳化：加入對 Mac Catalyst (maccatalyst) 的編譯架構支援
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/Headers/Public/filter_audio/**',
    'SUPPORTS_MACCATALYST' => 'YES'
  }
  s.static_framework = true
end
