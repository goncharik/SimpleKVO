Pod::Spec.new do |spec|
  spec.name = "SimpleKVO"
  spec.version = "0.1.0"
  spec.summary = "SimpleKVO is a Library that brings key-value observing to Swift without any Objective-C dependencies"
  spec.description  = <<-DESC
                        Simple and light weight library that brings key-value observing to Swift without any Objective-C dependencies
                    DESC
  spec.homepage = "https://github.com/alokard/SimpleKVO"
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.authors = { "Eugene Tulusha" => 'tulusheg@gmail.com' }
  spec.social_media_url = "http://twitter.com/alokard"

  spec.ios.deployment_target = "8.0"
  spec.watchos.deployment_target = "2.0"
  spec.tvos.deployment_target = "9.0"
  spec.osx.deployment_target = "10.9.0"

  spec.requires_arc = true
  spec.source = { git: "https://github.com/alokard/SimpleKVO.git", tag: "#{spec.version}", submodules: true }
  spec.source_files = "Sources/**/*.{h,swift}"

end