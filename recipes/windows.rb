#
# Cookbook:: gcp_agent
# Recipe:: windows
#
# Copyright:: 2020, The Authors, All Rights Reserved.

powershell_script 'install Stack' do
  code <<-EOH
    (New-Object Net.WebClient).DownloadFile("https://repo.stackdriver.com/windows/StackdriverMonitoring-GCM-46.exe", "${env:UserProfile}\StackdriverMonitoring-GCM-46.exe")
& "${env:UserProfile}\StackdriverMonitoring-GCM-46.exe"
    EOH
end

service 'StackdriverMonitoring' do
  action :start
end
