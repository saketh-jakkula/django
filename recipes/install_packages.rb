#
# Cookbook:: django
# Recipe:: install_packages
#
# Copyright:: 2018, The Authors, All Rights Reserved.

execute 'apt upgrade' do
  command 'apt-get update'
  only_if 'apt list --upgradable'
end

package 'python-django'

