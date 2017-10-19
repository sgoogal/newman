# Cookbook:: newman
# Recipe:: install
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'newman::repository'

package 'nodejs' do
 action :install
end

execute 'newman install' do
  command 'npm install newman --global'
not_if { File.exists?('/usr/bin/newman') }
  end



