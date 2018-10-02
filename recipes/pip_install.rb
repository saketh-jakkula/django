#
# Cookbook:: django
# Recipe:: pip_install
#
# Copyright:: 2018, The Authors, All Rights Reserved.

execute 'apt update' do
  command 'apt-get update'
  only_if 'apt list --upgradable'
end

package 'python-pip'

execute 'pip install' do
  command 'pip install django'
  not_if 'pip list|grep Django'
end
