name 'gcp_agent'
maintainer 'Thirumoorthi Ramaswami'
maintainer_email 'moorthy978@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures gcp_agent'
version '0.1.0'
chef_version     '>= 14'
issues_url       'https://github.com/thirumoorthir/gcp_agent/issues'
source_url       'https://github.com/thirumoorthir/gcp_agent'

%w(redhat centos windows).each do |os|
  supports os
end
