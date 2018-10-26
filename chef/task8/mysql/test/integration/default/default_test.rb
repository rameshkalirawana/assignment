# # encoding: utf-8

# Inspec test for recipe mysql::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/


describe service('mysql') do
  it { should be_installed }
  it { should be_running }
  it { should be_enabled }
end

