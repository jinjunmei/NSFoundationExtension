Pod::Spec.new do |s|
    s.name         = 'NSFoundationExtension'
    s.version      = '0.0.1'
    s.summary      = 'Some Extension and util based on NSFoundation'
    s.homepage     = 'https://github.com/CoderMJLee/MJRefresh'
    s.license      = 'MIT'
    s.authors      = {'Gujitao' => 'taojigu@163.com'}
    s.platform     = :ios, '6.0'
    s.source       = {:git => 'https://github.com/jinjunmei/NSFoundationExtension', :tag => s.version}
    s.source_files = 'Class/**/*.{h,m}'
    s.requires_arc = true

end
