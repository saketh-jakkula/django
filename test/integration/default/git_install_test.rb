# # encoding: utf-8

# Inspec test for recipe django::git_install

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

%W[ python3-pip git ].each do |pack|
describe package(pack) do
  it { should be_installed }
end
end

describe directory('/django-dev') do
  it { should exist }
end

describe command('django-admin --version') do
 its('exit_status') { should eq 0 }
end

describe pip('django') do
  it { should be_installed }
end
