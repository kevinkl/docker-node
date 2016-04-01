name 'docker-node'
maintainer 'Sebastian Gerau'
maintainer_email 'gsebast@web.de'
license 'Apache 2.0'
description 'Installs/Configures Docker components'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.5'

depends 'docker', '~> 2.0'
depends 'apt-docker', '~> 0.3'
depends 'yum-docker', '~> 0.3'
