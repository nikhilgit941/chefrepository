#
# Cookbook:: apache-cookbook
# Recipe:: sample-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.
file '/robofile' do
 content "This to create Attributes
 HOSTNAME: #{node['hostname']}
 IPADDRESS: #{node['ipaddress']}
 CPU: #{node['cpu']['0']['mhz']}
 MEMORY: #{node['memory']['total']}"
 owner 'root'
 group 'root'
 action :create
end


  
%w(httpd mariadb-server unzip git vim).each do |p|
  package p do
   action :install
 end
end
