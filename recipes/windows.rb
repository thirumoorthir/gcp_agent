#
# Cookbook:: gcp_agent
# Recipe:: windows
#
# Copyright:: 2020, The Authors, All Rights Reserved.

powershell_script 'name' do
  code <<-EOH
    (New-Object Net.WebClient).DownloadFile("https://repo.stackdriver.com/windows/StackdriverMonitoring-GCM-46.exe", "${env:UserProfile}\StackdriverMonitoring-GCM-46.exe")
& "${env:UserProfile}\StackdriverMonitoring-GCM-46.exe"
    EOH
  # not_if '(Get-WindowsFeature -Name Web-Server).Installed'
  not_if '(Get-Service -Name StackdriverMonitoring).Running'
end
