#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.

#user "raj" do
 # action :create
#end

#group "devops" do
# action :create
# members 'raj'
# append true
#end

execute "run a script" do
  command <<-EOH
  mkdir /saidr
  touch /saifile
  EOH
end
