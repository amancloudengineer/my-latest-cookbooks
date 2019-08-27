#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

file 'var/www/html/index.html' do
  content 'Alhamdulilah completed'
  action :create
end

service 'httpd' do
  action [:enable,:start]
end

execute 'run a script' do
  command <<-EOH
  mkdir /amandir
  touch /amanfile
  EOH
end

user 'user1' do
  action :create
end

group 'group1' do
  action :create
  members 'user1'
  append true
end

%w(httpd unzip git vim).each do |p|
 package p do
  action :install
 end
end

