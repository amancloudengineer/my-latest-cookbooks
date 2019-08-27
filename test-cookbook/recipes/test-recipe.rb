#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.


file '/myfile' do
  content 'hello everyone'
  action :create
end

