#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.



case node['platform']
when 'redhat'
  # Find Red Hat release version


  # Call implementation recipe based on platform
  include_recipe 'apache::redhat-httpd'


when 'ubuntu'
  # Call Ubuntu platform recipe
  include_recipe 'apache::ubuntu-apache2'

end

