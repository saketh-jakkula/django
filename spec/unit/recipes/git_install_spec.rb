#
# Cookbook:: django
# Spec:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'django::git_install' do
  context 'When all attributes are default, on Ubuntu 16.04' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    
     
    %W[ python3-pip git ].each do |pack|
    it 'installs the packages' do
      expect(chef_run).to install_package(pack) 
    end
  end

#    it 'clones git' do
#	expect(chef_run).to sync_git 'git://github.com/django/django'
#    end

    it 'pip install' do
	expect(chef_run).to install_pip 'django'
    end

  end
end
