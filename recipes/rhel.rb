#
# Cookbook:: gcp_agent
# Recipe:: non_windows
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# curl -sSO https://dl.google.com/cloudagents/add-monitoring-agent-repo.sh
# sudo bash add-monitoring-agent-repo.sh

# sudo yum list --showduplicates stackdriver-agent

# sudo yum install -y stackdriver-agent-major-version.*

# sudo yum install -y stackdriver-agent

remote_file "#{Chef::Config[:file_cache_path]}/add-monitoring-agent-repo.sh" do
  source 'https://dl.google.com/cloudagents/add-monitoring-agent-repo.sh'
  sensitive true
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

bash 'Add repo' do
  code <<-EOH
    bash "#{Chef::Config[:file_cache_path]}/add-monitoring-agent-repo.sh"
    EOH
  action :run
  cwd '/tmp'
  creates '/etc/yum.repos.d/google-cloud-monitoring.repo'
end

yum_package 'stackdriver-agent' do
  action :install
end

service 'stackdriver-agent' do
  action :start
end
