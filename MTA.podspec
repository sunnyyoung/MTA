Pod::Spec.new do |s|
  s.name                  = 'MTA'
  s.version               = '2.5.4'
  s.summary               = 'An unofficial MTA SDK Cocoapods repository.'
  s.homepage              = 'http://mta.qq.com'
  s.authors               = { 'Sunnyyoung' => 'https://github.com/Sunnyyoung' }
  s.source                = { :git => 'https://github.com/Sunnyyoung/MTA.git', :tag => s.version }
  s.license               = { :type => 'None',
                              :text => <<-LICENSE
                              Copyright © 1998 - 2018 Tencent. All Rights Reserved.
                              LICENSE
                            }
  s.requires_arc          = true
  s.platform					    = :ios, '8.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files				  = 'SDK/*.h'
    ss.public_header_files  = 'SDK/*.h'
    ss.vendored_libraries		= 'SDK/*.a'
    ss.frameworks           = 'CoreTelephony', 'CFNetwork', 'Security', 'SystemConfiguration'
    ss.libraries            = 'z', 'sqlite3'
  end

  # IDFA
  s.subspec 'IDFA' do |ss|
    ss.dependency             'MTA/Core'
    ss.frameworks           = 'AdSupport'
  end

  # Plugins
  s.subspec 'ADTracker' do |ss|
    ss.dependency             'MTA/Core'
    ss.source_files         = 'SDK/plugin/adtracker/*.h'
    ss.public_header_files  = 'SDK/plugin/adtracker/*.h'
    ss.vendored_libraries   = 'SDK/plugin/adtracker/*.a'
    ss.frameworks           = 'AdSupport'
  end

  s.subspec 'AutoTrack' do |ss|
    ss.dependency             'MTA/Core'
    ss.source_files         = 'SDK/plugin/autotrack/*.h'
    ss.public_header_files  = 'SDK/plugin/autotrack/*.h'
    ss.vendored_libraries   = 'SDK/plugin/autotrack/*.a'
  end

  s.subspec 'CrashReporter' do |ss|
    ss.dependency             'MTA/Core'
    ss.source_files         = 'SDK/plugin/crashreporter/*.h'
    ss.public_header_files  = 'SDK/plugin/crashreporter/*.h'
    ss.vendored_libraries   = 'SDK/plugin/crashreporter/*.a'
  end

  s.subspec 'DataInsight' do |ss|
    ss.dependency             'MTA/Core'
    ss.source_files         = 'SDK/plugin/datainsight/*.h'
    ss.public_header_files  = 'SDK/plugin/datainsight/*.h'
    ss.vendored_libraries   = 'SDK/plugin/datainsight/*.a'
    ss.frameworks           = 'CoreLocation'
  end
  
  s.subspec 'FBI' do |ss|
    ss.dependency             'MTA/Core'
    ss.source_files         = 'SDK/plugin/fbi/*.h'
    ss.public_header_files  = 'SDK/plugin/fbi/*.h'
    ss.vendored_libraries   = 'SDK/plugin/fbi/*.a'
    ss.frameworks           = 'Contacts'
  end

  s.subspec 'MTAHybrid' do |ss|
    ss.dependency             'MTA/Core'
    ss.source_files         = 'SDK/plugin/MTAHybrid/*.h'
    ss.public_header_files  = 'SDK/plugin/MTAHybrid/*.h'
    ss.vendored_libraries   = 'SDK/plugin/MTAHybrid/*.a'
  end
end
