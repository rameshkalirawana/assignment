apt_repository 'mongo' do
  uri          'http://repo.mongodb.org/apt/ubuntu'
  distribution 'xenial/mongodb-org/4.0'
  components   ['multiverse']
  key          'https://www.mongodb.org/static/pgp/server-4.0.asc'
end

package 'mongodb-org' do
  action :install
end
service 'mongod' do
  supports :status => true
  action [:enable, :start]
end
