yum_repository 'mongodb' do
    description 'mongodb RPM Repository'
    baseurl "https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.0/x86_64/"
    gpgkey  "https://www.mongodb.org/static/pgp/server-4.0.asc"
    action :create
    gpgcheck true
    enabled true
    end
package 'mongodb-org' do
  action :install
end
service 'mongod' do
  supports :status => true
  action [:enable, :start]
end
