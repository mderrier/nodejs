name 'nodejs'
maintainer 'redguide'
maintainer_email 'guilhem@lettron.fr'
license 'Apache 2.0'
description 'Installs/Configures node.js & io.js'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
source_url 'https://github.com/redguide/nodejs' if respond_to?(:source_url)
issues_url 'https://github.com/redguide/nodejs/issues' if respond_to?(:issues_url)
chef_version '>= 11.0' if respond_to?(:chef_version)
version '2.4.4'

depends 'yum-epel', '= 0.7.1'
depends 'build-essential', '= 3.2.0'
depends 'ark', '= 1.2.0'
depends 'apt', '= 3.0.0'
depends 'homebrew', '= 2.1.2'

%w(debian ubuntu centos redhat scientific oracle amazon smartos mac_os_x).each do |os|
  supports os
end
