Gem::Specification.new do |s|
  s.name = 'px_timetable'
  s.version = '0.1.1'
  s.summary = 'Query a timetable using a Polyrex document'
  s.authors = ['James Robertson']
  s.files = Dir['lib/px_timetable.rb']
  s.add_runtime_dependency('chronic_between', '~> 0.3', '>=0.3.0')
  s.add_runtime_dependency('polyrex', '~> 1.1', '>=1.1.2') 
  s.signing_key = '../privatekeys/px_timetable.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/px_timetable'
end
