#
# Cookbook:: gcp_agent
# Recipe:: windows
#
# Copyright:: 2020, The Authors, All Rights Reserved.

remote_file "#{Chef::Config[:file_cache_path]}\\StackdriverMonitoring-GCM-46.exe" do
  source 'https://repo.stackdriver.com/windows/StackdriverMonitoring-GCM-46.exe'
  action :create
end

powershell_script 'name' do
  code <<-EOH
    .\\StackdriverMonitoring-GCM-46.exe /S /D="C:\\Google Cloud's operations suite\\Monitoring\"
    EOH
  cwd Chef::Config[:file_cache_path]
end
