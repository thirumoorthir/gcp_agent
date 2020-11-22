# InSpec test for recipe gcp_agent::windows

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end

script = <<-EOH
  # a PowerShell script
  (New-Object Net.WebClient).DownloadFile("https://repo.stackdriver.com/windows/StackdriverMonitoring-GCM-46.exe", "${env:UserProfile}\StackdriverMonitoring-GCM-46.exe")
  & "${env:UserProfile}\StackdriverMonitoring-GCM-46.exe"
EOH

describe powershell(script) do
  its('exit_status') { should eq 0 }
end
