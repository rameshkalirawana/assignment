yum_repository 'mysql-server' do
    description 'MySQL 5.7 Community Server'
    baseurl "http://repo.mysql.com/yum/mysql-5.7-community/el/7/x86_64/"
    gpgkey  "http://repo.mysql.com/RPM-GPG-KEY-mysql"
    action :create
    gpgcheck true
    enabled true
end
package 'mysql-community-server' do
  action :install
end
service 'mysqld' do
  supports :status => true
  action [:enable, :start]
end

