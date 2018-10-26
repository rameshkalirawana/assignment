#
# Cookbook:: gra-tele-influx
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_repository 'telegraf-granfana' do
  uri          'https://repos.influxdata.com/ubuntu'
  distribution 'bionic'
  components   ['stable']
  key          'https://repos.influxdata.com/influxdb.key'
end

apt_repository 'grafana' do
  uri          'https://packagecloud.io/grafana/stable/debian/'
  distribution 'stretch'
  components   ['main']
  key          'https://packagecloud.io/gpg.key'
end



package 'telegraf' do
  action :install
end

service 'telegraf' do
  supports :status => true
  action [:enable, :start]
end

package 'influxdb' do
  action :install
end

service 'influxdb' do
  supports :status => true
  action [:enable, :start]
end

package 'grafana' do
  action :install
end

service 'grafana-server' do
  supports :status => true
  action [:enable, :start]
end
