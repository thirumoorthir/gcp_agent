#
# Cookbook:: gcp_agent
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#
# Installing the Cloud Monitoring agent
#

include_recipe "#{cookbook_name}::#{node['platform_family']}"
