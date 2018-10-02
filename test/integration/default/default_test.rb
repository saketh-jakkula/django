# # encoding: utf-8

# Inspec test for recipe django::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('python-django') do
  it { should be_installed }
  its('version'){ should match '1.8.7' }
end

describe command('django-admin --version') do
  its('exit_status') { should eq 0 }
end
