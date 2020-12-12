name 'gcp_agent'
maintainer 'Thirumoorthi Ramaswami'
maintainer_email 'moorthy978@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures gcp_agent'
version '0.1.0'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
chef_version     ">= 14" if respond_to?(:chef_version)
issues_url       "https://github.com/thirumoorthir/gcp_agent/issues" if respond_to?(:issues_url)
source_url       "https://github.com/thirumoorthir/gcp_agent" if respond_to?(:source_url)

%w{redhat centos windows}.each do |os|
  supports os
end
