#
# Cookbook:: test-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'tree' do
 action :install
end

file '/file2'do
  content 'chef second'
  action :create
  owner 'root'
  group 'root'
end
