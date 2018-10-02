# # encoding: utf-8

# Inspec test for recipe django::virtualenv_install

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('python3-pip') do
  it { should be_installed }
end

describe command('virtualenv --version') do
  its('exit_status') { should eq 0 }
end
