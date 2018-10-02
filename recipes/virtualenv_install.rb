#
# Cookbook:: django
# Recipe:: virtualenv_install
#
# Copyright:: 2018, The Authors, All Rights Reserved.

execute 'apt update' do
  command 'apt-get update'
  only_if 'apt list --upgradeable'
end

package 'python3-pip'

execute 'virtualevn install' do
  command 'pip3 install virtualenv'
end
