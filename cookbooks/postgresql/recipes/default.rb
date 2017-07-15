#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'postgresql-server' do
	notifies :run, 'execute[postgresql-init]'
end

execute 'postgresql-init'
	command 'postgresql-setup initdb'
	action :nothing

service 'postgresql' do
	action [:enable, :start]
end

