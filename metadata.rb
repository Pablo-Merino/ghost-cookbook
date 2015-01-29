name 'ghost-pablo'
maintainer 'Pablo Merino'
maintainer_email 'pablo.perso1995@gmail.com'
license 'Apache2'
description 'Installs/Configures ghost blogging engine and nginx'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.0.1'

supports 'ubuntu', '>= 12.04'
supports 'centos', '>= 6.5'
supports 'debian', '>= 7.0'

depends 'zip'
depends 'apt'
depends 'build-essential'
depends 'nodejs'
depends 'nginx'
depends 'git'
