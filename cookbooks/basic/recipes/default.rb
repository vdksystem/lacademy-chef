#
# Cookbook:: basic
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

hostname = node['hostname']
useful_packages = [
	'vim',
	'htop',
	'iftop',
	'mc',
]


file '/etc/motd' do
	content "Hostname is #{hostname} "
end

