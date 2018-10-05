#
# Cookbook:: django
# Recipe:: git_install
#
# Copyright:: 2018, The Authors, All Rights Reserved.

execute 'apt update' do
  command 'apt-get update'
  only_if 'apt list --upgradeable'
end

package 'git'
package 'python3-pip'

git 'django-dev' do
  repository 'https://github.com/django/django'
  revision 'master'
  action :sync
end

pip 'django' do
  action :run
  source_path '/django-dev'
end
