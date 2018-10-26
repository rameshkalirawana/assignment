apt_repository 'mysql' do
  uri          'http://repo.mysql.com/apt/ubuntu/'
  distribution 'xenial'
  components   ['mysql-5.7']
  key          'http://repo.mysql.com/RPM-GPG-KEY-mysql'
end


package 'mysql-server' do
  action :install
end
service 'mysql' do
  supports :status => true
  action [:enable, :start]
end
