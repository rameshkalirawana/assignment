
execute 'update package' do
  command 'yum install update'
  action :run
end

package 'httpd' do
  version '2.4'
  action :install
end
service 'httpd' do
  supports :status => true
  action [:enable, :start]
end
template '/var/www/html/' do
  source 'index.html'
  owner 'root'
  group 'root'
  mode '0744'
  action :create
end
