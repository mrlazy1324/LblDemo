Pod::Spec.new do |s|

s.name              = 'lblDemo'
s.version           = '0.0.1'
s.summary           = 'Nothing'
s.homepage          = 'https://github.com/mrlazy1324/LblDemo'
s.license           = {
:type => '',
:file => 'LICENSE'
}
s.author            = {
'Parth Patel' => 'parthpatel_1992@ymail.com'
}
s.source            = {
:git => 'https://github.com/mrlazy1324/LblDemo.git',
:tag => s.version.to_s
}
s.source_files      = 'LblDemo/*.{m,h}', 'AnotherFolder/*.{m,h}'
s.requires_arc      = true

end