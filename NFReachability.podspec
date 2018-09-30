Pod::Spec.new do |s|
  s.name             = 'NFReachability'
  s.version          = '0.3.0'
  s.summary          = 'Using iOS Network framework we can predict the reachability much smarter way.'
 
  s.description      = <<-DESC
Using iOS Network framework we can predict the reachability much smarter way
                       DESC
 
  s.homepage         = 'https://github.com/grinder81/nfreachability'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Md Al Mamun' => 'shohag.csesust@gmail.com' }
  s.source           = { :git => 'https://github.com/grinder81/nfreachability.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '12.0'
  s.source_files = 'Framework/NFReachability.swift'
 
  s.swift_version = '4.2'
  s.frameworks = 'Network'
end